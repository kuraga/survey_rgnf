require_relative '../../comparings/regions/regions_comparing_reporter'

module X

  module Regions

    class RegionsComparingXReporter < ::Comparings::Regions::RegionsComparingReporter

      protected

      def report_annotation
        output "<h1>Представители X (всего #{@sample_size}), по регионам</h1>"
      end

    end

  end

end
