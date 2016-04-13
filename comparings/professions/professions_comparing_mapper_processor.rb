require_relative '../../professions/by_question_and_profession_mapper_processor'

module Comparings

  module Professions

    class ProfessionsComparingMapperProcessor < ::Professions::ByQuestionAndProfessionMapperProcessor

      def initialize(data, profession_question_name = 'question0', professions = DEFAULT_PROFESSIONS)
        super data, profession_question_name, professions
      end

    end

  end

end
