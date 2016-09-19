require_relative '../../comparings/regions/regions_comparing_reporter'

module Bb

  module Regions

    class RegionsComparingBbReporter < ::Comparings::Regions::RegionsComparingReporter

      protected

      def report_annotation
        output "<h1>Представители BB (всего #{@sample_size})</h1>"
      end

    end

  end

end
