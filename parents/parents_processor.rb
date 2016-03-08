require_relative '../lib/processors/processor'
require_relative '../lib/processors/useless_answers_processor'
require_relative '../lib/processors/idols_processor'
require_relative '../lib/processors/birthyear_processor'

module Parents

  class ParentsProcessor < Processor

    def process
      data_dup.each_value do |unit|
        # 23. Вспомни, пожалуйста, на кого тебе хотелось быть больше всего похожим (-жей) в детстве? ("На одного из родственников"; укажи, на кого)
        unit['question23_1_additional'] = IdolsProcessor.new(unit['question23_1_additional']).process

        # 46. Год рождения / Возраст
        unit['question46'] = BirthyearProcessor.new(unit['question46']).process

        unit.replace UselessAnswersProcessor.new(unit).process
      end
    end

  end

end
