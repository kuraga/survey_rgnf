require_relative '../grouped_teachers_reporter'

module Teachers

  module Regions

    class RegionsTeachersReporter < Teachers::GroupedTeachersReporter

      protected

      def report_annotation
        output "<h1>Учсителя (всего #{@sample_size}), по регионам</h1>"
      end

    end

  end

end
