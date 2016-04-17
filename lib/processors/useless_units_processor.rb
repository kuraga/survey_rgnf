require_relative 'processor'

class UselessUnitsProcessor < Processor

  def initialize(data, generation_question_name = 'questionA1', region_question_name = 'questionC')
    super data

    @generation_question_name = generation_question_name
    @region_question_name = region_question_name
  end

  def process
    data_dup.select do |unit_name, unit|
      USEFUL_GENERATIONS.include? unit[@generation_question_name]
    end.select do |unit_name, unit|
      USEFUL_REGIONS.include? unit['questionC']
    end
  end

  protected

  USEFUL_GENERATIONS = ['GS', 'BB', 'X', 'Y', 'Z']
  USEFUL_REGIONS = ['Московская область', 'Самарская область', 'Забайкальский край']

end
