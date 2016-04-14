require_relative '../../generations/by_question_and_generation_mapper_processor'

module Teachers

  module Generations

    class GenerationsTeachersMapperProcessor < ::Generations::ByQuestionAndGenerationMapperProcessor

      def initialize(data, birthyear_question_name = 'question43', generations = DEFAULT_GENERATIONS)
        super data, birthyear_question_name, generations
      end

    end

  end

end
