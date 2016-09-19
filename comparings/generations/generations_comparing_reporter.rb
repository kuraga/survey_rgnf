require_relative '../grouped_comparing_reporter'

module Comparings

  module Generations

    class GenerationsComparingReporter < Comparings::GroupedComparingReporter

      protected

      def report_annotation
        output "<h1>Все (всего #{@sample_size}), по поколениям</h1>"
      end

    end

  end

end
