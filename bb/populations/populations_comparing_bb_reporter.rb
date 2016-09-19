require_relative '../../comparings/populations/populations_comparing_reporter'

module Bb

  module Populations

    class PopulationsComparingBbReporter < ::Comparings::Populations::PopulationsComparingReporter

      protected

      def report_annotation
        output "<h1>Представители BB (всего #{@sample_size})</h1>"
      end

    end

  end

end
