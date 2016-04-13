require_relative '../../populations/by_question_and_population_mapper_processor'

module Children

  module Populations

    class PopulationsChildrenMapperProcessor < ::Populations::ByQuestionAndPopulationMapperProcessor

      def initialize(data, population_question_name = 'question47', populations = DEFAULT_POPULATIONS)
        super data, population_question_name, populations
      end

    end

  end

end
