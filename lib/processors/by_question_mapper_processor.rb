require_relative 'processor'

class ByQuestionMapperProcessor < Processor

  def process
    @data.each_with_object(Hash.new { |hash, key| hash[key] = [] }) do |(unit_name, unit), by_question|
      unit.each do |question_name, answer|
        by_question[question_name] << answer
      end
    end
  end

end
