require_relative '../lib/processors/by_question_and_group_mapper_processor'
require 'date'

module Generations

  class ByQuestionAndGenerationMapperProcessor < ByQuestionAndGroupMapperProcessor

    def initialize(data, birthyear_question_name, generations = DEFAULT_GENERATIONS)
      super data, birthyear_question_name
      @generations = generations
    end

    protected

    DEFAULT_GENERATIONS = {
      1900..1922 => 'GG',
      1923..1942 => 'GS',
      1943..1962 => 'BB',
      1963..1982 => 'X',
      1983..2002 => 'Y',
      2003..Date.today.year => 'Z'
    }

    def get_group(unit)
      begin
        birthyear = Integer unit[@group_question_name]
      rescue ArgumentError, TypeError
        nil
      else
        generation = @generations.keys.find { |generation| generation.include? birthyear }
        @generations[generation]
      end
    end

  end

end
