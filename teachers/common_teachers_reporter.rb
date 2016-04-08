require_relative 'teachers_reporter'
require_relative '../lib/reporters/question_reporters/text_question_reporter'
require_relative '../lib/reporters/question_reporters/radio_question_reporter'
require_relative '../lib/reporters/question_reporters/checkbox_question_reporter'
require_relative '../lib/reporters/page_reporter_helper'

module Teachers

  class CommonTeachersReporter < TeachersReporter

    include PageReporterHelper

    def initialize(data)
      super data

      @sample_size = data.values.collect(&:length).max
    end

    def report
      output HEADER
      output "<h1>УЧИТЕЛЯ (всего #{@sample_size})</h1>"

      RadioQuestionReporter.new(@data, 'question0', @descriptions).report
      RadioQuestionReporter.new(@data, 'question1', @descriptions).report
      RadioQuestionReporter.new(@data, 'question2', @descriptions).report
      RadioQuestionReporter.new(@data, 'question3', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question4', @descriptions).report
      TextQuestionReporter.new(@data, 'question4_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question5', @descriptions).report
      TextQuestionReporter.new(@data, 'question5_additional', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question6', @descriptions).report
      TextQuestionReporter.new(@data, 'question6_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question7', @descriptions).report
      RadioQuestionReporter.new(@data, 'question8', @descriptions).report
      TextQuestionReporter.new(@data, 'question9', @descriptions).report
      RadioQuestionReporter.new(@data, 'question10', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question11', @descriptions).report
      TextQuestionReporter.new(@data, 'question11_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question12', @descriptions).report
      RadioQuestionReporter.new(@data, 'question13', @descriptions).report
      TextQuestionReporter.new(@data, 'question13_additional', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question12a', @descriptions).report
      TextQuestionReporter.new(@data, 'question12a_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question14', @descriptions).report
      TextQuestionReporter.new(@data, 'question14_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question15', @descriptions).report
      TextQuestionReporter.new(@data, 'question16', @descriptions).report
      RadioQuestionReporter.new(@data, 'question17', @descriptions).report
      RadioQuestionReporter.new(@data, 'question18', @descriptions).report
      RadioQuestionReporter.new(@data, 'question19', @descriptions).report
      RadioQuestionReporter.new(@data, 'question20', @descriptions).report
      RadioQuestionReporter.new(@data, 'question20_1_additional', @descriptions).report
      TextQuestionReporter.new(@data, 'question20_2_additional', @descriptions).report
      TextQuestionReporter.new(@data, 'question20_3_additional', @descriptions).report
      TextQuestionReporter.new(@data, 'question20_4_additional', @descriptions).report
      TextQuestionReporter.new(@data, 'question20_additional', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question21_1', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question21_2', @descriptions).report
      RadioQuestionReporter.new(@data, 'question22_1', @descriptions).report
      RadioQuestionReporter.new(@data, 'question22_2', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question23', @descriptions).report
      TextQuestionReporter.new(@data, 'question23_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question24', @descriptions).report
      TextQuestionReporter.new(@data, 'question24_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question25', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question26', @descriptions).report
      TextQuestionReporter.new(@data, 'question26_additional', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question27', @descriptions).report
      TextQuestionReporter.new(@data, 'question27_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question28', @descriptions).report
      RadioQuestionReporter.new(@data, 'question29', @descriptions).report
      TextQuestionReporter.new(@data, 'question29_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question30', @descriptions).report
      RadioQuestionReporter.new(@data, 'question31', @descriptions).report
      RadioQuestionReporter.new(@data, 'question32', @descriptions).report
      RadioQuestionReporter.new(@data, 'question33', @descriptions).report
      TextQuestionReporter.new(@data, 'question_33_1_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question34', @descriptions).report
      TextQuestionReporter.new(@data, 'question34_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question35', @descriptions).report
      RadioQuestionReporter.new(@data, 'question36', @descriptions).report
      RadioQuestionReporter.new(@data, 'question37_1', @descriptions).report
      RadioQuestionReporter.new(@data, 'question37_2', @descriptions).report
      RadioQuestionReporter.new(@data, 'question37_3', @descriptions).report
      RadioQuestionReporter.new(@data, 'question37_4', @descriptions).report
      RadioQuestionReporter.new(@data, 'question37_5', @descriptions).report
      RadioQuestionReporter.new(@data, 'question37_6', @descriptions).report
      RadioQuestionReporter.new(@data, 'question37_7', @descriptions).report
      RadioQuestionReporter.new(@data, 'question37_8', @descriptions).report
      RadioQuestionReporter.new(@data, 'question38', @descriptions).report
      RadioQuestionReporter.new(@data, 'question39', @descriptions).report
      TextQuestionReporter.new(@data, 'question39_additional', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question40', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question41', @descriptions).report
      RadioQuestionReporter.new(@data, 'question42', @descriptions).report
      RadioQuestionReporter.new(@data, 'question43', @descriptions).report
      RadioQuestionReporter.new(@data, 'question44', @descriptions).report
      RadioQuestionReporter.new(@data, 'question45', @descriptions).report

      output FOOTER
    end

  end

end
