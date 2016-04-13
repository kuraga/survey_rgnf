require_relative 'children_reporter'
require_relative '../lib/reporters/question_reporters/text_question_grouped_reporter'
require_relative '../lib/reporters/question_reporters/radio_question_grouped_reporter'
require_relative '../lib/reporters/question_reporters/checkbox_question_grouped_reporter'
require_relative '../lib/reporters/page_reporter_helper'

module Children

  class GroupedChildrenReporter < ChildrenReporter

    include PageReporterHelper

    def initialize(data)
      super data

      @sample_size = data.values.collect(&:values).collect(&:flatten).collect(&:length)[0]
    end

    def report
      output HEADER
      output "<h1>ДЕТИ (всего #{@sample_size})</h1>"

      RadioQuestionGroupedReporter.new(@data, 'question0', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question1', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question2', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question3', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question4', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question4_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question5', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question5_additional', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question6', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question7', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question7_additional', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question8', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question8_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question9', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question10', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question11', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question12', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question12a', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question12a_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question13', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question14', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question14_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question15', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question15_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question16', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question17', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question18', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question19', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question20', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question21', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question21_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question22', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question22_1_additional', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question22_2_additional', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question22_3_additional', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question22_4_additional', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question22_additional', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question23_1', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question23_2', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question23_3', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question24_1', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question24_2', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question24_3', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question25', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question25_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question26', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question26_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question27', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question27_additional', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question28', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question28_additional', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question29', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question29_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question30', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question31', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question31_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question32', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question33', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question34', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question35', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question35_1_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question36', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question36_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question37', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question38', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question38_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question39_1', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question39_2', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question39_3', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question39_4', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question39_5', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question39_6', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question39_7', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question39_8', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question40', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question41', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'question41_additional', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question42', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'question43', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question44', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question45', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question46', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question47', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'question48', @descriptions).report

      output FOOTER
    end

  end

end
