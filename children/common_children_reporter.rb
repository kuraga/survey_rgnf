require_relative 'children_reporter'
require_relative '../lib/reporters/question_reporters/text_question_reporter'
require_relative '../lib/reporters/question_reporters/radio_question_reporter'
require_relative '../lib/reporters/question_reporters/checkbox_question_reporter'
require_relative '../lib/reporters/page_reporter_helper'

module Children

  class CommonChildrenReporter < ChildrenReporter

    include PageReporterHelper

    def initialize(data)
      super data

      @sample_size = data.values.collect(&:length).max
    end

    protected

    def report_annotation
      output "<h1>Школьники (всего #{@sample_size})</h1>"
    end

    def report_content
      RadioQuestionReporter.new(@data, 'question0', @descriptions).report
      RadioQuestionReporter.new(@data, 'question1', @descriptions).report
      RadioQuestionReporter.new(@data, 'question2', @descriptions).report
      RadioQuestionReporter.new(@data, 'question3', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question4', @descriptions).report
      TextQuestionReporter.new(@data, 'question4_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question5', @descriptions).report
      TextQuestionReporter.new(@data, 'question5_additional', @descriptions).report
      TextQuestionReporter.new(@data, 'question6', @descriptions).report
      RadioQuestionReporter.new(@data, 'question7', @descriptions).report
      TextQuestionReporter.new(@data, 'question7_additional', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question8', @descriptions).report
      TextQuestionReporter.new(@data, 'question8_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question9', @descriptions).report
      TextQuestionReporter.new(@data, 'question10', @descriptions).report
      TextQuestionReporter.new(@data, 'question11', @descriptions).report
      RadioQuestionReporter.new(@data, 'question12', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question12a', @descriptions).report
      TextQuestionReporter.new(@data, 'question12a_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question13', @descriptions).report
      RadioQuestionReporter.new(@data, 'question14', @descriptions).report
      TextQuestionReporter.new(@data, 'question14_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question15', @descriptions).report
      TextQuestionReporter.new(@data, 'question15_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question16', @descriptions).report
      TextQuestionReporter.new(@data, 'question17', @descriptions).report
      RadioQuestionReporter.new(@data, 'question18', @descriptions).report
      RadioQuestionReporter.new(@data, 'question19', @descriptions).report
      RadioQuestionReporter.new(@data, 'question20', @descriptions).report
      RadioQuestionReporter.new(@data, 'question21', @descriptions).report
      TextQuestionReporter.new(@data, 'question21_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question22', @descriptions).report
      RadioQuestionReporter.new(@data, 'question22_1_additional', @descriptions).report
      TextQuestionReporter.new(@data, 'question22_2_additional', @descriptions).report
      TextQuestionReporter.new(@data, 'question22_3_additional', @descriptions).report
      TextQuestionReporter.new(@data, 'question22_4_additional', @descriptions).report
      TextQuestionReporter.new(@data, 'question22_additional', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question23_1', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question23_2', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question23_3', @descriptions).report
      RadioQuestionReporter.new(@data, 'question24_1', @descriptions).report
      RadioQuestionReporter.new(@data, 'question24_2', @descriptions).report
      RadioQuestionReporter.new(@data, 'question24_3', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question25', @descriptions).report
      TextQuestionReporter.new(@data, 'question25_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question26', @descriptions).report
      TextQuestionReporter.new(@data, 'question26_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question27', @descriptions).report
      TextQuestionReporter.new(@data, 'question27_additional', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question28', @descriptions).report
      TextQuestionReporter.new(@data, 'question28_additional', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question29', @descriptions).report
      TextQuestionReporter.new(@data, 'question29_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question30', @descriptions).report
      RadioQuestionReporter.new(@data, 'question31', @descriptions).report
      TextQuestionReporter.new(@data, 'question31_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question32', @descriptions).report
      RadioQuestionReporter.new(@data, 'question33', @descriptions).report
      RadioQuestionReporter.new(@data, 'question34', @descriptions).report
      RadioQuestionReporter.new(@data, 'question35', @descriptions).report
      TextQuestionReporter.new(@data, 'question35_1_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question36', @descriptions).report
      TextQuestionReporter.new(@data, 'question36_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question37', @descriptions).report
      RadioQuestionReporter.new(@data, 'question38', @descriptions).report
      TextQuestionReporter.new(@data, 'question38_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question39_1', @descriptions).report
      RadioQuestionReporter.new(@data, 'question39_2', @descriptions).report
      RadioQuestionReporter.new(@data, 'question39_3', @descriptions).report
      RadioQuestionReporter.new(@data, 'question39_4', @descriptions).report
      RadioQuestionReporter.new(@data, 'question39_5', @descriptions).report
      RadioQuestionReporter.new(@data, 'question39_6', @descriptions).report
      RadioQuestionReporter.new(@data, 'question39_7', @descriptions).report
      RadioQuestionReporter.new(@data, 'question39_8', @descriptions).report
      RadioQuestionReporter.new(@data, 'question40', @descriptions).report
      RadioQuestionReporter.new(@data, 'question41', @descriptions).report
      TextQuestionReporter.new(@data, 'question41_additional', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question42', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question43', @descriptions).report
      RadioQuestionReporter.new(@data, 'question44', @descriptions).report
      RadioQuestionReporter.new(@data, 'question45', @descriptions).report
      RadioQuestionReporter.new(@data, 'question46', @descriptions).report
      RadioQuestionReporter.new(@data, 'question47', @descriptions).report
      RadioQuestionReporter.new(@data, 'question48', @descriptions).report
    end

  end

end
