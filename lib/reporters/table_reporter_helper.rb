module TableReporterHelper

  protected

  UNIT_NAME_REGEX_AND_CAPTURE = [/survey(\d+_\w+)\.json/, 1]

  def process_unit_name(name)
    name[*UNIT_NAME_REGEX_AND_CAPTURE]
  end

  def process_answer(answer)
    case answer
    when Array
      answer.collect { |answer_item| process_answer answer_item }.join(',')
    when String
      answer.gsub /^answer(?:\w+_)+(\w+)$/, '\1'
    when NilClass
      ''
    else
      answer.to_s
    end
  end

  def report_csv
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
