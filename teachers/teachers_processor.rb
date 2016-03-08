require_relative '../lib/processors/processor'
require_relative '../lib/processors/useless_answers_processor'
require_relative '../lib/processors/idols_processor'
require_relative '../lib/processors/birthyear_processor'

module Teachers

  class TeachersProcessor < Processor

    def process
      data_dup.each_value do |unit|
        # 20. Вспомни, пожалуйста, на кого тебе хотелось быть больше всего похожим (-жей) в детстве? ("На одного из родственников"; укажи, на кого)
        unit['question20_1_additional'] = IdolsProcessor.new(unit['question20_1_additional']).process

        # 43. Год рождения / Возраст
        unit['question43'] = BirthyearProcessor.new(unit['question43']).process

        unit.replace UselessAnswersProcessor.new(unit).process
      end
    end

  end

end
