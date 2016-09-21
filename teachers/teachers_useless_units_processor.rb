require_relative '../lib/processors/useless_units_processor'

module Teachers

  class TeachersUselessUnitsProcessor < ::UselessUnitsProcessor

    def initialize(data, birthyear_question_name = 'question43', region_question_name = 'question44')
      super data, birthyear_question_name, region_question_name
    end

  end

end
