require_relative '../../populations/by_question_and_population_mapper_processor'

module Teachers

  module Populations

    class PopulationsTeachersMapperProcessor < ::Populations::ByQuestionAndPopulationMapperProcessor

      def initialize(data, population_question_name = 'question45', populations = DEFAULT_POPULATIONS)
        super data, population_question_name, populations
      end

    end

  end

end
