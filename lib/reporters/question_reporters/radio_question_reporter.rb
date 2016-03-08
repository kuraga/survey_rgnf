require_relative 'question_reporter'

class RadioQuestionReporter < QuestionReporter

  def initialize(by_question, question_name, descriptions)
    super by_question, question_name, descriptions

    @amounts = get_histogram @data
    @answers = @amounts.keys.sort_by { |answer| -@amounts[answer] }
  end

  def report
    output "<h2>#{@descriptions[@question_name]}</h2>"
    output '<ul>'
    @answers.each do |answer|
      output_answer_result answer
    end
    output '</ul>'
  end

  protected

  def output_answer_result(answer)
    result = @amounts[answer]
    percentage = get_frequency_percentage result, @data.length

    output "<li><i>#{@descriptions[answer] || answer}</i> - <b>#{percentage}% (#{result}/#{@data.length})</b></li>"
  end

end
