require_relative '../grouped_children_reporter'

module Children

  module Regions

    class RegionsChildrenReporter < Children::GroupedChildrenReporter

      protected

      def report_annotation
        output "<h1>Школники (всего #{@sample_size}), по регионам</h1>"
      end

    end

  end

end
