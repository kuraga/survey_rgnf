require_relative '../../populations/by_question_and_population_mapper_processor'

module Comparings

  module Populations

    class PopulationsComparingMapperProcessor < ::Populations::ByQuestionAndPopulationMapperProcessor

      def initialize(data, population_question_name = 'questionD', populations = DEFAULT_POPULATIONS)
        super data, population_question_name, populations
      end

    end

  end

end
