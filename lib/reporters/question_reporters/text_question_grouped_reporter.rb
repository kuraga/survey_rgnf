require_relative 'question_reporter'

class TextQuestionGroupedReporter < QuestionReporter

  def initialize(by_question, question_name, descriptions)
    super by_question, question_name, descriptions

    @group_names = []
    @data.each do |group, group_answers|
      @group_names << group.to_s unless group_answers.empty?
    end
    @group_names.sort!
  end

  def report
    output "<h2>#{@descriptions[@question_name]}</h2>"

    output '<table class="table table-bordered table-stripped table-hover">'
    output '  <tbody>'

    @group_names.each do |group_name|
      group_answers = @data[group_name]
      next if group_answers.empty?

      output "<tr><th>#{group_name}</th></tr>"
      output '<tr><td>'
      output '<ul class="results">'
      group_answers.sort.each do |answer|
        output "<li><i>#{answer}</i></li>"
      end
      output '</ul>'
      output '</td></tr>'
    end

    output '</tbody>'
    output '</table>'
  end

end
