require_relative '../grouped_parents_reporter'

module Parents

  module Populations

    class PopulationsParentsReporter < Parents::GroupedParentsReporter

      protected

      def report_annotation
        output "<h1>Родители (всего #{@sample_size}), по типам населенного пункта</h1>"
      end

    end

  end

end
