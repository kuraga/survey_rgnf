require_relative 'parents_reporter'
require_relative '../lib/reporters/table_reporter_helper'
require 'csv'

module Parents

  class TableParentsReporter < ParentsReporter

    include TableReporterHelper

    def initialize(data)
      super data

      @sample_size = 0
    end

  end

end
