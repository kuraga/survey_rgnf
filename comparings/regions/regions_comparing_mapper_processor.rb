require_relative '../../regions/by_question_and_region_mapper_processor'

module Comparings

  module Regions

    class RegionsComparingMapperProcessor < ::Regions::ByQuestionAndRegionMapperProcessor

      def initialize(data, region_question_name = 'questionC')
        super data, region_question_name
      end

    end

  end

end
