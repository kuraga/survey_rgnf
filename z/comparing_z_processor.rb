require_relative '../lib/processors/processor'

module Z

  class ComparingZProcessor < Processor

    def initialize(data, generation_question_name = 'questionA1')
      super data

      @generation_question_name = generation_question_name
    end

    def process
      data_dup.select do |unit_name, unit|
        unit[@generation_question_name] == 'answerA1_6'
      end
    end

  end

end
