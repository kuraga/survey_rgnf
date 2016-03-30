require_relative 'regions_reporter'
require_relative '../lib/reporters/question_reporters/text_question_grouped_reporter'
require_relative '../lib/reporters/question_reporters/radio_question_grouped_reporter'
require_relative '../lib/reporters/question_reporters/checkbox_question_grouped_reporter'
require_relative '../lib/reporters/page_reporter_helper'

module Regions

  class CommonRegionsReporter < RegionsReporter

    include PageReporterHelper

    def initialize(data)
      super data

      @sample_size = data.values.collect(&:values).collect(&:flatten).collect(&:length)[0]
    end

    def report
      output HEADER
      output "<h1>ВСЕ ПО ПОКОЛЕНИЯМ (всего #{@sample_size})</h1>"

      RadioQuestionGroupedReporter.new(@data, 'questionA', @descriptions).report # text
      RadioQuestionGroupedReporter.new(@data, 'questionA1', @descriptions).report # text
      RadioQuestionGroupedReporter.new(@data, 'questionB', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionC', @descriptions).report # text
      RadioQuestionGroupedReporter.new(@data, 'questionD', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionE', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'questionF', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionF_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionG', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionG_additional', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'questionH', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionH_additional', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionI', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionJ', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'questionK', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionK_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionL', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionM', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionM_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionN', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionN_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionO', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionP', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionQ', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionR', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionS', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionT', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionT_1_additional', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionT_2_additional', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionT_3_additional', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionT_4_additional', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionT_additional', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'questionU', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionV', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'questionW', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionW_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionX', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionX_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionY', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'questionZ', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionZ_additional', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'questionAA', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionAA_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionAB', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionAC', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionAC_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionAD', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionAE', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionAF', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionAG', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionAG_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionAH', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionAH_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionAI', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionAJ', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionAJ_additional', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionAK_2', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionAK_3', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionAK_4', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionAK_5', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionAK_6', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionAK_7', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionAK_8', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionAL', @descriptions).report
      RadioQuestionGroupedReporter.new(@data, 'questionAM', @descriptions).report
      TextQuestionGroupedReporter.new(@data, 'questionAM_additional', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'questionAN', @descriptions).report
      CheckboxQuestionGroupedReporter.new(@data, 'questionAO', @descriptions).report

      output FOOTER
    end

  end

end
