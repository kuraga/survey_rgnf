require_relative '../lib/processors/by_question_and_group_mapper_processor'

module Professions

  class ByQuestionAndProfessionMapperProcessor < ByQuestionAndGroupMapperProcessor

    def initialize(data, profession_question_name, professions = DEFAULT_PROFESSIONS)
      super data, profession_question_name
      @professions = professions
    end

    protected

    DEFAULT_PROFESSIONS = {
      '1' => 'школьник',
      '2' => 'учитель',
      '3' => 'родитель'
    }

    def get_group(unit)
      if unit.has_key?(@group_question_name)
        profession_answer = unit[@group_question_name]
        unless profession_answer.nil?
          m = profession_answer.match /_(\d+)$/
          !m.nil? ? @professions[m[1]] : nil
        else
          nil
        end
      else
        nil
      end
    end

  end

end
