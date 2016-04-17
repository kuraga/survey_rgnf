require_relative 'processor'

class UselessAnswersProcessor < Processor

  USELESS_REGEX = /^(?:да|нет?|друг[ои]е|н[ие] ?чего|н[ие] ?кого|н[ие] ?как|[-. =]+).{0,3}$|затрудняюсь|х.?з.?|не ?знаю|не ?случалось|не ?было|не ?помню/i

  def process
    @data.each_with_object({}) do |(question_name, answer), processed|
      processed_answer = process_answer answer
      processed[question_name] = processed_answer unless processed_answer.nil? || (processed_answer.is_a?(String) && processed_answer.empty?)
    end
  end

  protected

  def process_answer(answer)
    case answer
    when Array
      answer.collect &method(:process_answer)
    when String
      answer !~ USELESS_REGEX ? answer.dup : ''
    else
      deep_dup answer
    end
  end

end
