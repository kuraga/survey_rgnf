require_relative 'question_reporter'

class TextQuestionReporter < QuestionReporter

  def report
    output "<h2>#{@descriptions[@question_name]}</h2>"

    output '<ul>'
    @data.each do |answer|
      output "<li><i>#{answer}</i></li>"
    end
    output '</ul>'
  end

end
