require_relative '../lib/processors/by_question_and_group_mapper_processor'

module Populations

  class ByQuestionAndPopulationMapperProcessor < ByQuestionAndGroupMapperProcessor

    def initialize(data, population_question_name, populations = DEFAULT_POPULATIONS)
      super data, population_question_name
      @populations = populations
    end

    protected

    DEFAULT_POPULATIONS = {
      '1' => 'село, деревня',
      '2' => 'небольшой город',
      '3' => 'областной/краевой центр',
      '4' => 'мегаполис (большой город)'
    }

    def get_group(unit)
      if unit.has_key?(@group_question_name)
        population_answer = unit[@group_question_name]
        unless population_answer.nil?
          m = population_answer.match /_(\d+)$/
          !m.nil? ? @populations[m[1]] : nil
        else
          nil
        end
      else
        nil
      end
    end

  end

end
