require_relative 'children_reporter'
require_relative '../lib/reporters/table_reporter_helper'
require 'csv'

module Children

  class TableChildrenReporter < ChildrenReporter

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
