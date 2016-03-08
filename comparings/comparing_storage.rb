require_relative '../lib/storages/json_storage'
require 'json'

module Comparings

  class ComparingStorage < JsonStorage

    CHILDREN_SAMPLE_GLOB = 'survey1*.json'
    TEACHERS_SAMPLE_GLOB = 'survey2*.json'
    PARENTS_SAMPLE_GLOB = 'survey3*.json'

    def load(root)
      children_sample_glob = File.join root, self.class::CHILDREN_SAMPLE_GLOB
      load_from_children_glob children_sample_glob

      teachers_sample_glob = File.join root, self.class::TEACHERS_SAMPLE_GLOB
      load_from_teachers_glob teachers_sample_glob

      parents_sample_glob = File.join root, self.class::PARENTS_SAMPLE_GLOB
      load_from_parents_glob parents_sample_glob
    end

    protected

    def load_from_children_glob(glob)
      Dir[glob].each do |file_name|
        load_from_children_file file_name
      end
    end

    def load_from_children_file(file_name)
      json = File.read file_name
      children_unit = JSON.parse json

      unit = map_sample children_unit, {
        'A' => '45',
        'B' => '44',
        'C' => '46',
        'D' => '47',
        'E' => '2',
        'F' => '4',
        'F_additional' => '4_additional',
        'G' => '7',
        'G_additional' => '7_additional',
        'H' => '8',
        'H_additional' => '8_additional',
        'I' => '10',
        'J' => '12',
        'K' => '12a',
        'K_additional' => '12a_additional',
        'L' => '13',
        'M' => '14',
        'M_additional' => '14_additional',
        'N' => '15',
        'N_additional' => '15_additional',
        'O' => '16',
        'P' => '17',
        'Q' => '18',
        'R' => '19',
        'S' => '20',
        'T' => '22',
        'T_1_additional' => '22_1_additional',
        'T_2_additional' => '22_2_additional',
        'T_3_additional' => '22_3_additional',
        'T_4_additional' => '22_4_additional',
        'T_additional' => '22_additional',
        'U' => '23_1',
        'V' => '24_1',
        'W' => '25',
        'W_additional' => '25_additional',
        'X' => '26',
        'X_additional' => '26_additional',
        'Y' => '27',
        'Z' => '28',
        'Z_additional' => '28_additional',
        'AA' => '29',
        'AA_additional' => '29_additional',
        'AB' => '30',
        'AC' => '31',
        'AC_additional' => '31_additional',
        'AD' => '32',
        'AE' => '33',
        'AF' => '34',
        'AG' => '35',
        'AG_additional' => '_35_1_additional',  # !!!
        'AH' => '36',
        'AH_additional' => '36_additional',
        'AI' => '37',
        'AJ' => '38',
        'AJ_additional' => '38_additional',
        'AK_2' => '39_1',  # !!!
        'AK_3' => '39_3',
        'AK_4' => '39_4',
        'AK_5' => '39_5',
        'AK_6' => '39_6',
        'AK_7' => '39_7',
        'AK_8' => '39_8',
        'AL' => '40',
        'AM' => '41',
        'AM_additional' => '41_additional',
        'AN' => '42',
        'AO' => '43'
      }

      @sample[file_name] = unit
    end

    def load_from_teachers_glob(glob)
      Dir[glob].each do |file_name|
        load_from_teachers_file file_name
      end
    end

    def load_from_teachers_file(file_name)
      json = File.read file_name
      teachers_unit = JSON.parse json

      unit = map_sample teachers_unit, {
        'A' => '43',
        'B' => '42',
        'C' => '44',
        'D' => '45',
        'E' => '2',
        'F' => '4',
        'F_additional' => '4_additional',
        'G' => '5',
        'G_additional' => '5_additional',
        'H' => '6',
        'H_additional' => '6_additional',
        'I' => '9',
        'J' => '10',
        'K' => '11',
        'K_additional' => '11_additional',
        'L' => '12',
        'M' => '13',
        'M_additional' => '13_additional',
        'N' => '14',
        'N_additional' => '14_additional',
        'O' => '15',
        'P' => '16',
        'Q' => '17',
        'R' => '18',
        'S' => '19',
        'T' => '20',
        'T_1_additional' => '20_1_additional',
        'T_2_additional' => '20_2_additional',
        'T_3_additional' => '20_3_additional',
        'T_4_additional' => '20_4_additional',
        'T_additional' => '20_additional',
        'U' => '21_1',
        'V' => '22_1',
        'W' => '23',
        'W_additional' => '23_additional',
        'X' => '24',
        'X_additional' => '24_additional',
        'Y' => '25',
        'Z' => '26',
        'Z_additional' => '26_additional',
        'AA' => '27',
        'AA_additional' => '27_additional',
        'AB' => '28',
        'AC' => '29',
        'AC_additional' => '29_additional',
        'AD' => '30',
        'AE' => '31',
        'AF' => '32',
        'AG' => '33',
        'AG_additional' => '_33_1_additional',  # !!!
        'AH' => '34',
        'AH_additional' => '34_additional',
        'AI' => '35',
        'AJ' => '36',
        'AJ_additional' => '36_additional',
        'AK_2' => '37_2',
        'AK_3' => '37_3',
        'AK_4' => '37_4',
        'AK_5' => '37_5',
        'AK_6' => '37_6',
        'AK_7' => '37_7',
        'AK_8' => '37_8',
        'AL' => '38',
        'AM' => '39',
        'AM_additional' => '39_additional',
        'AN' => '40',
        'AO' => '41'
      }

      @sample[file_name] = unit
    end

    def load_from_parents_glob(glob)
      Dir[glob].each do |file_name|
        load_from_parents_file file_name
      end
    end

    def load_from_parents_file(file_name)
      json = File.read file_name
      parents_unit = JSON.parse json

      unit = map_sample parents_unit, {
        'A' => '46',
        'B' => '45',
        'C' => '47',
        'D' => '48',
        'E' => '3',
        'F' => '4',
        'F_additional' => '4_additional',
        'G' => '5',
        'G_additional' => '5_additional',
        'H' => '6',
        'H_additional' => '6_additional',
        'I' => '11',
        'J' => '12',
        'K' => '13',
        'K_additional' => '13_additional',
        'L' => '14',
        'M' => '15',
        'M_additional' => '15_additional',
        'N' => '16',
        'N_additional' => '16_additional',
        'O' => '17',
        'P' => '18',
        'Q' => '19',
        'R' => '20',
        'S' => '21',
        'T' => '23',
        'T_1_additional' => '23_1_additional',
        'T_2_additional' => '23_2_additional',
        'T_3_additional' => '23_3_additional',
        'T_4_additional' => '23_4_additional',
        'T_additional' => '23_additional',
        'U' => '24_1',
        'V' => '25_1',
        'W' => '26',
        'W_additional' => '26_additional',
        'X' => '27',
        'X_additional' => '27_additional',
        'Y' => '28',
        'Z' => '29',
        'Z_additional' => '29_additional',
        'AA' => '30',
        'AA_additional' => '30_additional',
        'AB' => '31',
        'AC' => '32',
        'AC_additional' => '32_additional',
        'AD' => '33',
        'AE' => '34',
        'AF' => '35',
        'AG' => '36',
        'AG_additional' => '_36_1_additional',  # !!!
        'AH' => '37',
        'AH_additional' => '37_additional',
        'AI' => '38',
        'AJ' => '39',
        'AJ_additional' => '39_additional',
        'AK_2' => '40_2',
        'AK_3' => '40_3',
        'AK_4' => '40_4',
        'AK_5' => '40_5',
        'AK_6' => '40_6',
        'AK_7' => '40_7',
        'AK_8' => '40_8',
        'AL' => '41',
        'AM' => '42',
        'AM_additional' => '42_additional',
        'AN' => '43',
        'AO' => '44'
      }

      @sample[file_name] = unit
    end

    def map_sample(source, mapping)
      mapping.each_with_object({}) do |(receiver_key, source_key), receiver|
        source_question_name = "question#{source_key}"
        next unless source.has_key?(source_question_name)
        receiver_question_name = "question#{receiver_key}"
        source_answer_name = "answer#{source_key}"
        receiver_answer_name = "answer#{receiver_key}"

        receiver[receiver_question_name] = source[source_question_name]

        [*receiver["question#{receiver_key}"]].each do |answer_item|
          answer_item[0, source_answer_name.length] = receiver_answer_name if answer_item.start_with?(source_answer_name) && (answer_item.length == source_answer_name.length || (answer_item.length > source_answer_name.length && answer_item[source_answer_name.length] == '_'))
        end
      end
    end

  end

end
