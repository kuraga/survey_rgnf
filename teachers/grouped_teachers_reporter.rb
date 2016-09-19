require_relative 'teachers_reporter'
require_relative '../lib/reporters/question_reporters/text_question_grouped_reporter'
require_relative '../lib/reporters/question_reporters/radio_question_grouped_reporter'
require_relative '../lib/reporters/question_reporters/checkbox_question_grouped_reporter'
require_relative '../lib/reporters/page_reporter_helper'

module Teachers

  class GroupedTeachersReporter < TeachersReporter

    include PageReporterHelper

    def initialize(data)
      super data

      @sample_size = data.values.collect(&:values).collect(&:flatten).collect(&:length)[0]
    end

    protected

    def report_annotation
      output "<h1>Учителя (всего #{@sample_size})</h1>"
    end

    def report_content
      RadioQuestionGroupedReporter.new(@data, 'question0', @descriptions).report
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
      RadioQuestionGroupedReporter.new(@data, 'question8', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question9', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question10', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question11', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question11_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question12', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question13', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question13_additional', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question12a', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question12a_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question14', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question14_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question15', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question16', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question17', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question18', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question19', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question20', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question20_1_additional', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question20_2_additional', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question20_3_additional', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question20_4_additional', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question20_additional', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question21_1', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question21_2', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question22_1', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question22_2', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question23', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question23_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question24', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question24_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question25', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question26', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question26_additional', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question27', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question27_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question28', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question29', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question29_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question30', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question31', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question32', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question33', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question33_1_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question34', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question34_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question35', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question36', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question37_1', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question37_2', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question37_3', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question37_4', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question37_5', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question37_6', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question37_7', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question37_8', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question38', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question39', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question39_additional', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question40', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question41', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question42', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question43', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question44', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question45', @descriptions).report
    end

  end

end
