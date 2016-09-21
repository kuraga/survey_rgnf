require_relative '../lib/processors/useless_units_processor'

module Parents

  class ParentsUselessUnitsProcessor < ::UselessUnitsProcessor

    def initialize(data, birthyear_question_name = 'question46', region_question_name = 'question47')
      super data, birthyear_question_name, region_question_name
    end

  end

end
