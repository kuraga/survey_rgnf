require_relative '../lib/processors/processor'
require_relative '../lib/processors/useless_answers_processor'
require_relative '../lib/processors/idols_processor'
require_relative '../lib/processors/birthyear_processor'
require 'date'

module Comparings

  class ComparingProcessor < Processor

    GENERATIONS = [1900..1922, 1923..1942, 1943..1962, 1963..1982, 1983..2002, 2003..Date.today.year]

    USEFUL_GENERATIONS = [1923..1942, 1943..1962, 1963..1982, 1983..2002, 2003..Date.today.year]
    USEFUL_REGIONS = ['Московская область', 'Самарская область', 'Забайкальский край']

    def process
      data_dup.each_value do |unit|
        # A. Год рождения / Возраст
        unit['questionA'] = BirthyearProcessor.new(unit['questionA']).process
        unit['questionA1'] = begin
          birthyear = Integer unit['questionA']
        rescue ArgumentError, TypeError
          nil
        else
          GENERATIONS.find { |generation| generation.include? birthyear }
        end.to_s

        # T. Вспомни, пожалуйста, на кого тебе хотелось быть больше всего похожим (-жей) в детстве? ("На одного из родственников"; укажи, на кого)
        unit['questionT_1_additional'] = IdolsProcessor.new(unit['questionT_1_additional']).process

        unit.replace UselessAnswersProcessor.new(unit).process
      end
=begin
     .select do |unit_name, unit|

        USEFUL_GENERATIONS.collect do |generation|
          begin
            birthyear = Integer unit['questionA']
          rescue ArgumentError, TypeError
            false
          else
            generation.include? birthyear
          end
        end.any?

      end.select do |unit_name, unit|

        USEFUL_REGIONS.include? unit['questionC']

      end
=end
    end

  end

end
