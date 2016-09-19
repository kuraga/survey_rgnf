require_relative '../../comparings/populations/populations_comparing_reporter'

module X

  module Populations

    class PopulationsComparingXReporter < ::Comparings::Populations::PopulationsComparingReporter

      protected

      def report_annotation
        output "<h1>Представители X (всего #{@sample_size})</h1>"
      end

    end

  end

end
