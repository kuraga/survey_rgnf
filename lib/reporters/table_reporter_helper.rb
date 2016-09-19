require 'natural_sort_kernel'

module TableReporterHelper

  def report
    report_csv
  end

  protected

  UNIT_NAME_REGEX_AND_CAPTURE = [/survey(\d+_\w+)\.json/, 1]

  def process_unit_name(name)
    name[*UNIT_NAME_REGEX_AND_CAPTURE]
  end

  def report_csv
    question_names = @data.values.collect(&:keys).flatten.uniq.natural_sort
    unit_names = @data.keys

    CSV $stdout, col_sep: ",", row_sep: "\r\n", quote_char: '"', force_quotes: true do |csv|
      row = [''] + question_names
      csv << row

      @data.each_pair do |unit_name, unit|
        row = [unit_name]
        question_names.each do |question_name|
          row << @data[unit_name].fetch(question_name, nil)
        end
        csv << row
      end
    end
  end

end
