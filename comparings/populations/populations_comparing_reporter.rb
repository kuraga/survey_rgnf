require_relative '../grouped_comparing_reporter'

module Comparings

  module Populations

    class PopulationsComparingReporter < Comparings::GroupedComparingReporter

      protected

      def report_annotation
        output "<h1>Все (всего #{@sample_size}), по типам населенного пункта</h1>"
      end

    end

  end

end
