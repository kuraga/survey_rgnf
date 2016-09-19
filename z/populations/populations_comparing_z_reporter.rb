require_relative '../../comparings/populations/populations_comparing_reporter'

module Z

  module Populations

    class PopulationsComparingZReporter < ::Comparings::Populations::PopulationsComparingReporter

      protected

      def report_annotation
        output "<h1>Представители Z (всего #{@sample_size})</h1>"
      end

    end

  end

end
