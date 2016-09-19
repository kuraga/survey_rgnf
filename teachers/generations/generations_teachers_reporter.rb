require_relative '../grouped_teachers_reporter'

module Teachers

  module Generations

    class GenerationsTeachersReporter < Teachers::GroupedTeachersReporter

      protected

      def report_annotation
        output "<h1>Учителя (всего #{@sample_size}), по поколениям</h1>"
      end

    end

  end

end
