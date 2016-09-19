require_relative '../../comparings/regions/regions_comparing_reporter'

module Z

  module Regions

    class RegionsComparingZReporter < ::Comparings::Regions::RegionsComparingReporter

      protected

      def report_annotation
        output "<h1>Представители Z (всего #{@sample_size})</h1>"
      end

    end

  end

end
