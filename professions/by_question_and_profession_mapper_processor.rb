require_relative '../lib/processors/by_question_and_group_mapper_processor'

module Professions

  class ByQuestionAndProfessionMapperProcessor < ByQuestionAndGroupMapperProcessor

    def initialize(data, profession_question_name = 'question0')
      super data, profession_question_name
    end

    protected

    def get_group(unit)
      begin
        profession = unit[@group_question_name]
      rescue ArgumentError, TypeError
        nil
      end
    end

  end

end
