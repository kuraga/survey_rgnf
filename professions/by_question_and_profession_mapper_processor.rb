require_relative '../lib/processors/by_question_and_group_mapper_processor'

module Professions

  class ByQuestionAndProfessionMapperProcessor < ByQuestionAndGroupMapperProcessor

    def initialize(data, profession_question_name, professions = DEFAULT_PROFESSIONS)
      super data, profession_question_name
      @professions = professions
    end

    protected

    DEFAULT_PROFESSIONS = {
      'answer0_1' => 'школьник',
      'answer0_2' => 'учитель',
      'answer0_3' => 'родитель'
    }

    def get_group(unit)
      begin
        profession = unit[@group_question_name]
      rescue ArgumentError, TypeError
        nil
      else
        @professions[profession]
      end
    end

  end

end
