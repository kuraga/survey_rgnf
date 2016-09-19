require_relative '../grouped_parents_reporter'

module Parents

  module Generations

    class GenerationsParentsReporter < Parents::GroupedParentsReporter

      protected

      def report_annotation
        output "<h1>Родители (всего #{@sample_size}), по поколениям</h1>"
      end

    end

  end

end
