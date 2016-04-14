require_relative '../../regions/by_question_and_region_mapper_processor'

module Teachers

  module Regions

    class RegionsTeachersMapperProcessor < ::Regions::ByQuestionAndRegionMapperProcessor

      def initialize(data, region_question_name = 'question44')
        super data, region_question_name
      end

    end

  end

end
