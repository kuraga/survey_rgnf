require_relative 'question_reporter'

class QuestionReporter < Reporter

  def initialize(by_question, question_name, descriptions)
    super by_question[question_name]

    @question_name = question_name
    @descriptions = descriptions
  end

  protected

  def get_histogram(answers_flatten)
    answers_flatten.each_with_object(Hash.new(0)) do |(answer_flatten), histogram|
      histogram[answer_flatten] += 1
    end
  end

  def get_frequency_percentage(result, total)
    (100 * Float(result) / total).round 1
  end
end
