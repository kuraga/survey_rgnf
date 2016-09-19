require_relative '../../comparings/populations/populations_comparing_reporter'

module Y

  module Populations

    class PopulationsComparingYReporter < ::Comparings::Populations::PopulationsComparingReporter

      protected

      def report_annotation
        output "<h1>Представители Y (всего #{@sample_size}), по типу населенного пункта</h1>"
      end

    end

  end

end
