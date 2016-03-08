require_relative '../lib/processors/processor'
require_relative '../lib/processors/useless_answers_processor'
require_relative '../lib/processors/idols_processor'
require_relative '../lib/processors/birthyear_processor'

module Comparings

  class ComparingProcessor < Processor

    def process
      data_dup.each_value do |unit|
        # A. Год рождения / Возраст
        unit['questionA'] = BirthyearProcessor.new(unit['questionA']).process

        # T. Вспомни, пожалуйста, на кого тебе хотелось быть больше всего похожим (-жей) в детстве? ("На одного из родственников"; укажи, на кого)
        unit['questionT_1_additional'] = IdolsProcessor.new(unit['questionT_1_additional']).process

        unit.replace UselessAnswersProcessor.new(unit).process
      end
    end

  end

end
