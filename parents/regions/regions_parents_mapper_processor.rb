require_relative '../../regions/by_question_and_region_mapper_processor'

module Parents

  module Regions

    class RegionsParentsMapperProcessor < ::Regions::ByQuestionAndRegionMapperProcessor

      def initialize(data, region_question_name = 'question47')
        super data, region_question_name
      end

    end

  end

end
