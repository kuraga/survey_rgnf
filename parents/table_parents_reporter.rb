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

    def report
      question_names = @data.values.collect(&:keys).flatten.uniq
      unit_names = @data.keys

      CSV $stdout do |csv|
        row = [''] + unit_names.collect(&method(:process_unit_name))
        csv << row

        question_names.each do |question_name|
          row = [@descriptions[question_name]]
          unit_names.each do |unit_name|
            row << process_answer(@data[unit_name][question_name])
          end
          csv << row
        end
      end
    end

  end

end
