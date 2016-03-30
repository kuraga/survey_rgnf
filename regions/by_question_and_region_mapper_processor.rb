require_relative '../lib/processors/by_question_and_group_mapper_processor'

module Regions

  class ByQuestionAndRegionMapperProcessor < ByQuestionAndGroupMapperProcessor

    def initialize(data, region_question_name = 'questionC')
      super data, region_question_name
    end

    protected

    def get_group(unit)
      begin
        region = unit[@group_question_name]
      rescue ArgumentError, TypeError
        nil
      end
    end

  end

end
