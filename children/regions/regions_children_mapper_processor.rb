require_relative '../../regions/by_question_and_region_mapper_processor'

module Children

  module Regions

    class RegionsChildrenMapperProcessor < ::Regions::ByQuestionAndRegionMapperProcessor

      def initialize(data, region_question_name = 'question46')
        super data, region_question_name
      end

    end

  end

end
