require_relative '../lib/processors/by_question_and_group_mapper_processor'

module Populations

  class ByQuestionAndPopulationMapperProcessor < ByQuestionAndGroupMapperProcessor

    def initialize(data, population_question_name = 'questionD', populations = DEFAULT_POPULATIONS)
      super data, population_question_name
      @populations = populations
    end

    protected

    DEFAULT_POPULATIONS = {
      'answerD_1' => 'село, деревня',
      'answerD_2' => 'небольшой город',
      'answerD_3' => 'областной/краевой центр',
      'answerD_4' => 'мегаполис (большой город)'
    }

    def get_group(unit)
      begin
        population = unit[@group_question_name]
      rescue ArgumentError, TypeError
        nil
      else
        @populations[population]
      end
    end

  end

end
