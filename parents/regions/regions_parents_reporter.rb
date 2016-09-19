require_relative '../grouped_parents_reporter'

module Parents

  module Regions

    class RegionsParentsReporter < Parents::GroupedParentsReporter

      protected

      def report_annotation
        output "<h1>Родители (всего #{@sample_size}), по регионам</h1>"
      end

    end

  end

end
