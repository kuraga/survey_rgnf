require_relative '../../generations/by_question_and_generation_mapper_processor'

module Comparings

  module Generations

    class GenerationsComparingMapperProcessor < ::Generations::ByQuestionAndGenerationMapperProcessor

      def initialize(data, birthyear_question_name = 'questionA', generations = DEFAULT_GENERATIONS)
        super data, birthyear_question_name, generations
      end

    end

  end

end
