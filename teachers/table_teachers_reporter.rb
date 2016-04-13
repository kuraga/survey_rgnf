require_relative 'teachers_reporter'
require_relative '../lib/reporters/table_reporter_helper'
require 'csv'

module Teachers

  class TableTeachersReporter < TeachersReporter

    include TableReporterHelper

    def initialize(data)
      super data

      @sample_size = 0
    end

    def report
      report_csv
    end

  end

end
