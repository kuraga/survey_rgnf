require_relative '../../generations/by_question_and_generation_mapper_processor'

module Parents

  module Generations

    class GenerationsParentsMapperProcessor < ::Generations::ByQuestionAndGenerationMapperProcessor

      def initialize(data, birthyear_question_name = 'question46', generations = DEFAULT_GENERATIONS)
        super data, birthyear_question_name, generations
      end

    end

  end

end
