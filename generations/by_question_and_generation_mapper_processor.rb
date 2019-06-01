require_relative '../lib/processors/by_question_and_group_mapper_processor'

module Generations

  class ByQuestionAndGenerationMapperProcessor < ByQuestionAndGroupMapperProcessor

    def initialize(data, birthyear_question_name, generations = DEFAULT_GENERATIONS)
      super data, birthyear_question_name
      @generations = generations
    end

    protected

    DEFAULT_GENERATIONS = {
      # 1900..1922 => '(1) GG',
      # 1900..1922 => '(1) GG_new',
      # 1900..1922 => '(1) GG_new2',
      # 1923..1942 => '(2) GS',
      # 1923..1940 => '(2) GS_new',
      # 1923..1943 => '(2) GS_new2',
      # 1943..1962 => '(3) BB',
      # 1941..1954 => '(3) BB_new',
      1944..1957 => '(3) BB_new2',
      # 1963..1982 => '(4) X',
      # 1955..1973 => '(4) X_new',
      1958..1978 => '(4) X_new2',
      # 1983..2002 => '(5) Y',
      # 1974..1985 => '(5) Y_new',
      1978..1999 => '(5) Y_new2',
      # 2004..2014 => '(6) Z',
      # 1986..1999 => '(6) Z_new',
      # 2000..2014 => '(7) Z*_new',
      2000..2014 => '(6) Z_new2'
    }

    def get_group(unit)
      if unit.has_key?(@group_question_name)
        begin
          birthyear = Integer unit[@group_question_name]
        rescue TypeError
          nil
        else
          generation = @generations.keys.find { |generation| generation.include? birthyear }
          !generation.nil? ? @generations[generation] : nil
        end
      end
    end

  end

end
