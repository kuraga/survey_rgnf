require_relative 'question_reporter'

class CheckboxQuestionGroupedReporter < QuestionReporter

  def initialize(by_question, question_name, descriptions)
    super by_question, question_name, descriptions

    @group_names = []
    answer_names = []
    @amounts_by_group = {}

    @data.each do |group, group_answers|
      @group_names << group.to_s unless group_answers.empty?
      group_answers_flatten = group_answers.flatten
      answer_names += group_answers_flatten
      @amounts_by_group[group] = get_histogram group_answers_flatten
    end
    @group_names.sort!

    @answer_names = answer_names.uniq.sort_by { |answer_name| @descriptions.keys.find_index(answer_name) || Float::INFINITY }
  end

  def report
    output "<h2>#{@descriptions[@question_name]}</h2>"
    output '<table class="table table-bordered table-stripped table-hover">'
    output_groups_header
    output '<tbody>'
    @answer_names.each do |answer_name|
      output_answer_row answer_name
    end
    output '</tbody>'
    output '</table>'
  end

  protected

  def output_groups_header
    output '<thead>'
    output '<tr>'
    output '<th>&nbsp;</th>'
    @group_names.each do |group_name|
      output "<th>#{group_name}</th>"
    end
    output '</tr>'
    output '</thead>'
  end

  def output_answer_row(answer_name)
    output '<tr>'
    output "<td><i>#{@descriptions[answer_name] || answer_name}</i></td>"
    @group_names.each do |group_name|
      group_answers = @data[group_name]
      next if group_answers.empty?

      result = @amounts_by_group[group_name][answer_name]
      percentage = get_frequency_percentage result, group_answers.length

      n = (255.0/25*(1 - Float(result) / group_answers.length)).round * 25
      output "<td style='background-color: rgb(#{n}, #{n}, #{255});'>#{percentage}% (#{result}/#{group_answers.length})</td>"
    end
    output '</tr>'      
  end

end
