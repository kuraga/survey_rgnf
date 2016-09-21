require_relative '../lib/processors/useless_units_processor'

module Comparings

  class ComparingUselessUnitsProcessor < ::UselessUnitsProcessor

    def initialize(data, birthyear_question_name = 'questionA', region_question_name = 'questionC')
      super data, birthyear_question_name, region_question_name
    end

  end

end
