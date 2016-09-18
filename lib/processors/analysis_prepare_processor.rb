require_relative 'processor'

class AnalysisPrepareProcessor < Processor

  def process
    @data.each_with_object({}) do |(unit_name, unit), processed|
      processed[unit_name] = process_unit unit
    end
  end

  protected

  def process_unit(unit)
    unit.each_with_object({}) do |(question_name, answer), processed|
      processed_answer = process_answer answer, question_name
      new_data = processed_answer.is_a?(Hash) ? processed_answer : { question_name => processed_answer }

      processed.merge! new_data
    end
  end

  def process_answer(answer, question_name)
    case answer
    when String
      if m = answer.match(/^answer(?:\w+_)+(\w+)$/)
        answer_item_subquestion_name = "#{question_name}_#{m[1]}"
        { answer_item_subquestion_name => 1 }
      else
        { question_name => answer }
      end
    when Array
      answer.each_with_object({}) do |answer_item, deployed|
        answer_item.match(/^answer(?:\w+_)+(\w+)$/) do |m|
          answer_item_subquestion_name = "#{question_name}_#{m[1]}"
          deployed[answer_item_subquestion_name] = 1
        end
      end
    when NilClass
      ''
    else
      answer.to_s
    end
  end

end
