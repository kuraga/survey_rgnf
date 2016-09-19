require_relative 'parents_reporter'
require_relative '../lib/reporters/question_reporters/text_question_grouped_reporter'
require_relative '../lib/reporters/question_reporters/radio_question_grouped_reporter'
require_relative '../lib/reporters/question_reporters/checkbox_question_grouped_reporter'
require_relative '../lib/reporters/page_reporter_helper'

module Parents

  class GroupedParentsReporter < ParentsReporter

    include PageReporterHelper

    def initialize(data)
      super data

      @sample_size = data.values.collect(&:values).collect(&:flatten).collect(&:length)[0]
    end

    protected

    def report_annotation
      output "<h1>Родители (всего #{@sample_size})</h1>"
    end

    def report_content
      RadioQuestionGroupedReporter.new(@data, 'question1', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question2', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question3', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question4', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question4_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question5', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question5_additional', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question6', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question6_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question7', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question8', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question9', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question10', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question11', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question12', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question13', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question13_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question14', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question15', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question15_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question16', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question16_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question17', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question18', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question19', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question20', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question21', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question22', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question22_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question23', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question23_1_additional', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question23_2_additional', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question23_3_additional', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question23_4_additional', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question23_additional', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question24_1', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question24_2', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question25_1', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question25_2', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question26', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question26_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question27', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question27_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question28', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question29', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question29_additional', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question30', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question30_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question31', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question32', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question32_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question33', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question34', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question35', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question36', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question36_1_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question37', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question37_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question38', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question39', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question39_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question40_1', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question40_2', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question40_3', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question40_4', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question40_5', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question40_6', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question40_7', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question40_8', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question41', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question42', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question42_additional', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question43', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question44', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question45', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question46', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question47', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question48', @descriptions).report
    end

  end

end
