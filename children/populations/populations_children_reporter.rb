require_relative '../grouped_children_reporter'

module Children

  module Populations

    class PopulationsChildrenReporter < Children::GroupedChildrenReporter

      protected

      def report_annotation
        output "<h1>Школьники (всего #{@sample_size}), по типам населенного пункта</h1>"
      end

    end

  end

end
