require_relative '../lib/processors/useless_units_processor'

module Children

  class ChildrenUselessUnitsProcessor < ::UselessUnitsProcessor

    def initialize(data, birthyear_question_name = 'question45', region_question_name = 'question46')
      super data, birthyear_question_name, region_question_name
    end

  end

end
