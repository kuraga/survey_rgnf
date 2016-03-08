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

end
