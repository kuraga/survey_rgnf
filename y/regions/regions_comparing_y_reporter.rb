require_relative '../../comparings/regions/regions_comparing_reporter'

module Y

  module Regions

    class RegionsComparingYReporter < ::Comparings::Regions::RegionsComparingReporter

      protected

      def report_annotation
        output "<h1>Представители Y (всего #{@sample_size}), по регионам</h1>"
      end

    end

  end

end
