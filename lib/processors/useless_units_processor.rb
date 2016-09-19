require_relative 'processor'
require_relative 'birthyear_processor'
require 'date'

class UselessUnitsProcessor < Processor

  def initialize(data, birthyear_question_name = 'questionA', region_question_name = 'questionC')
    super data

    @birthyear_question_name = birthyear_question_name
    @region_question_name = region_question_name
  end

  def process
    data_dup.select do |unit_name, unit|
      birthyear = begin
        Integer BirthyearProcessor.new(unit[@birthyear_question_name]).process
      rescue ArgumentError, TypeError
        nil
      end
      USEFUL_BIRTHYEARS.include? birthyear
    end.select do |unit_name, unit|
      USEFUL_REGIONS.include? unit[@region_question_name]
    end
  end

  protected

  USEFUL_BIRTHYEARS = 1943..Date.today.year
  USEFUL_REGIONS = ['Московская область', 'Самарская область', 'Забайкальский край']

end
