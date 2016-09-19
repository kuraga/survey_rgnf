require_relative '../grouped_teachers_reporter'

module Teachers

  module Populations

    class PopulationsTeachersReporter < Teachers::GroupedTeachersReporter

      protected

      def report_annotation
        output "<h1>Учителя (всего #{@sample_size}), по типам населенного пункта</h1>"
      end

    end

  end

end
