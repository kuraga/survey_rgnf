require_relative '../lib/processors/by_question_and_group_mapper_processor'
require 'date'

module Generations

  class ByQuestionAndGenerationMapperProcessor < ByQuestionAndGroupMapperProcessor

    GENERATIONS = [1900..1922, 1923..1942, 1943..1962, 1963..1982, 1983..2002, 2003..Date.today.year]

    def initialize(data, generation_question_name = 'questionA')
      super data, generation_question_name
    end

    protected

    def get_group(unit)
      begin
        birthyear = Integer unit[@group_question_name]
      rescue ArgumentError, TypeError
        nil
      else
        GENERATIONS.find { |generation| generation.include? birthyear }
      end
    end

  end

end
