require_relative '../grouped_comparing_reporter'

module Comparings

  module Professions

    class ProfessionsComparingReporter < Comparings::GroupedComparingReporter

      protected

      def report_annotation
        output "<h1>Все (всего #{@sample_size}), по типам анкеты</h1>"
      end

    end

  end

end
