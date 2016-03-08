require_relative '../lib/processors/processor'
require_relative '../lib/processors/useless_answers_processor'
require_relative '../lib/processors/idols_processor'
require_relative '../lib/processors/birthyear_processor'

module Children

  class ChildrenProcessor < Processor

    def process
      data_dup.each_value do |unit|
        # 22. Вспомни, пожалуйста, на кого тебе хотелось быть больше всего похожим (-жей) в детстве? ("На одного из родственников"; укажи, на кого)
        unit['question22_1_additional'] = IdolsProcessor.new(unit['question22_1_additional']).process

        # 45. Год рождения / Возраст
        unit['question45'] = BirthyearProcessor.new(unit['question45']).process

        unit.replace UselessAnswersProcessor.new(unit).process
      end
    end

  end

end
