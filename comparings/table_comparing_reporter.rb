require_relative 'comparing_reporter'
require_relative '../lib/reporters/table_reporter_helper'
require 'csv'

module Comparings

  class TableComparingReporter < ComparingReporter

    include TableReporterHelper

    def initialize(data)
      super data

      @sample_size = 0
    end

  end

end
