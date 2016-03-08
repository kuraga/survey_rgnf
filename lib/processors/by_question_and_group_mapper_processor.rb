require_relative 'processor'
require 'date'

class ByQuestionAndGroupMapperProcessor < Processor

  def initialize(data, group_question_name)
    super data

    @group_question_name = group_question_name
  end

  def process
    @data.each_with_object(Hash.new { |hash, key| hash[key] = Hash.new { |hash, key| hash[key] = [] }}) do |(unit_name, unit), by_question_and_group|
      unit_group = get_group unit
      next unless unit_group

      unit.each do |question_name, answer|
        by_question_and_group[question_name][unit_group] << answer
      end
    end
  end

  protected

  def get_group(unit)
    raise NotImplementedError
  end

end
