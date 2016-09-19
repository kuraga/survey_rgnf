require_relative '../grouped_comparing_reporter'

module Comparings

  module Regions

    class RegionsComparingReporter < Comparings::GroupedComparingReporter

      protected

      def report_annotation
        output "<h1>Все (всего #{@sample_size}), по регионам</h1>"
      end

    end

  end

end
