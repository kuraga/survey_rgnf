require_relative '../lib/processors/processor'
require_relative '../lib/processors/useless_answers_processor'
require_relative '../lib/processors/idols_processor'
require_relative '../lib/processors/birthyear_processor'
require 'date'

module Comparings

  class ComparingProcessor < Processor

    def process
      data_dup.each_value do |unit|
        # A. Год рождения / Возраст
        unit['questionA'] = BirthyearProcessor.new(unit['questionA']).process
        unit['questionA1'] = begin
          birthyear = Integer unit['questionA']
        rescue ArgumentError, TypeError
          nil
        else
          generation = GENERATIONS.keys.find { |generation| generation.include? birthyear }
          GENERATIONS[generation]
        end

        # T. Вспомни, пожалуйста, на кого тебе хотелось быть больше всего похожим (-жей) в детстве? ("На одного из родственников"; укажи, на кого)
        unit['questionT_1_additional'] = IdolsProcessor.new(unit['questionT_1_additional']).process

        unit.replace UselessAnswersProcessor.new(unit).process
      end
    end

    protected

    GENERATIONS = {
      1900..1922 => 'answerA1_1',
      1923..1942 => 'answerA1_2',
      1943..1962 => 'answerA1_3',
      1963..1982 => 'answerA1_4',
      1983..2002 => 'answerA1_5',
      2003..Date.today.year => 'answerA1_6'
    }

  end

end
