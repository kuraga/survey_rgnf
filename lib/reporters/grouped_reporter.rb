require_relative 'reporter'

class GroupedReporter < Reporter

  def initialize(data)
    super data

    @sample_size = @data.collect { |question_name, answers_by_group| answers_by_group.collect { |group, group_answers| group_answers.length }.inject(&:+) }.max
  end

end
