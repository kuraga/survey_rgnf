require_relative 'parents_reporter'
require_relative '../lib/reporters/question_reporters/text_question_reporter'
require_relative '../lib/reporters/question_reporters/radio_question_reporter'
require_relative '../lib/reporters/question_reporters/checkbox_question_reporter'
require_relative '../lib/reporters/page_reporter_helper'

module Parents

  class CommonParentsReporter < ParentsReporter

    include PageReporterHelper

    def initialize(data)
      super data

      @sample_size = data.values.collect(&:length).max
    end

    protected

    def report_annotation
      output "<h1>Родители (всего #{@sample_size})</h1>"
    end

    def report_content
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
      TextQuestionReporter.new(@data, 'question8', @descriptions).report
      TextQuestionReporter.new(@data, 'question9', @descriptions).report
      RadioQuestionReporter.new(@data, 'question10', @descriptions).report
      TextQuestionReporter.new(@data, 'question11', @descriptions).report
      RadioQuestionReporter.new(@data, 'question12', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question13', @descriptions).report
      TextQuestionReporter.new(@data, 'question13_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question14', @descriptions).report
      RadioQuestionReporter.new(@data, 'question15', @descriptions).report
      TextQuestionReporter.new(@data, 'question15_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question16', @descriptions).report
      TextQuestionReporter.new(@data, 'question16_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question17', @descriptions).report
      TextQuestionReporter.new(@data, 'question18', @descriptions).report
      RadioQuestionReporter.new(@data, 'question19', @descriptions).report
      RadioQuestionReporter.new(@data, 'question20', @descriptions).report
      RadioQuestionReporter.new(@data, 'question21', @descriptions).report
      RadioQuestionReporter.new(@data, 'question22', @descriptions).report
      TextQuestionReporter.new(@data, 'question22_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question23', @descriptions).report
      RadioQuestionReporter.new(@data, 'question23_1_additional', @descriptions).report
      TextQuestionReporter.new(@data, 'question23_2_additional', @descriptions).report
      TextQuestionReporter.new(@data, 'question23_3_additional', @descriptions).report
      TextQuestionReporter.new(@data, 'question23_4_additional', @descriptions).report
      TextQuestionReporter.new(@data, 'question23_additional', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question24_1', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question24_2', @descriptions).report
      RadioQuestionReporter.new(@data, 'question25_1', @descriptions).report
      RadioQuestionReporter.new(@data, 'question25_2', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question26', @descriptions).report
      TextQuestionReporter.new(@data, 'question26_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question27', @descriptions).report
      TextQuestionReporter.new(@data, 'question27_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question28', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question29', @descriptions).report
      TextQuestionReporter.new(@data, 'question29_additional', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question30', @descriptions).report
      TextQuestionReporter.new(@data, 'question30_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question31', @descriptions).report
      RadioQuestionReporter.new(@data, 'question32', @descriptions).report
      TextQuestionReporter.new(@data, 'question32_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question33', @descriptions).report
      RadioQuestionReporter.new(@data, 'question34', @descriptions).report
      RadioQuestionReporter.new(@data, 'question35', @descriptions).report
      RadioQuestionReporter.new(@data, 'question36', @descriptions).report
      TextQuestionReporter.new(@data, 'question36_1_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question37', @descriptions).report
      TextQuestionReporter.new(@data, 'question37_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question38', @descriptions).report
      RadioQuestionReporter.new(@data, 'question39', @descriptions).report
      TextQuestionReporter.new(@data, 'question39_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'question40_1', @descriptions).report
      RadioQuestionReporter.new(@data, 'question40_2', @descriptions).report
      RadioQuestionReporter.new(@data, 'question40_3', @descriptions).report
      RadioQuestionReporter.new(@data, 'question40_4', @descriptions).report
      RadioQuestionReporter.new(@data, 'question40_5', @descriptions).report
      RadioQuestionReporter.new(@data, 'question40_6', @descriptions).report
      RadioQuestionReporter.new(@data, 'question40_7', @descriptions).report
      RadioQuestionReporter.new(@data, 'question40_8', @descriptions).report
      RadioQuestionReporter.new(@data, 'question41', @descriptions).report
      RadioQuestionReporter.new(@data, 'question42', @descriptions).report
      TextQuestionReporter.new(@data, 'question42_additional', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question43', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'question44', @descriptions).report
      RadioQuestionReporter.new(@data, 'question45', @descriptions).report
      RadioQuestionReporter.new(@data, 'question46', @descriptions).report
      RadioQuestionReporter.new(@data, 'question47', @descriptions).report
      RadioQuestionReporter.new(@data, 'question48', @descriptions).report
    end

  end

end
