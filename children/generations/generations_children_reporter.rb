require_relative '../grouped_children_reporter'

module Children

  module Generations

    class GenerationsChildrenReporter < Children::GroupedChildrenReporter

      protected

      def report_annotation
        output "<h1>Школьники (всего #{@sample_size}), по поколениям</h1>"
      end

    end

  end

end
