require_relative 'comparing_reporter'
require_relative '../lib/reporters/question_reporters/text_question_reporter'
require_relative '../lib/reporters/question_reporters/radio_question_reporter'
require_relative '../lib/reporters/question_reporters/checkbox_question_reporter'
require_relative '../lib/reporters/page_reporter_helper'

module Comparings

  class CommonComparingReporter < ComparingReporter

    include PageReporterHelper

    def initialize(data)
      super data

      @sample_size = data.values.collect(&:length).max
    end

    def report
      output HEADER
      output "<h1>ВСЕ (всего #{@sample_size})</h1>"

      RadioQuestionReporter.new(@data, 'question0', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionA', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionA1', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionB', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionC', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionD', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionE', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'questionF', @descriptions).report
      TextQuestionReporter.new(@data, 'questionF_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionG', @descriptions).report
      TextQuestionReporter.new(@data, 'questionG_additional', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'questionH', @descriptions).report
      TextQuestionReporter.new(@data, 'questionH_additional', @descriptions).report
      TextQuestionReporter.new(@data, 'questionI', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionJ', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'questionK', @descriptions).report
      TextQuestionReporter.new(@data, 'questionK_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionL', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionM', @descriptions).report
      TextQuestionReporter.new(@data, 'questionM_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionN', @descriptions).report
      TextQuestionReporter.new(@data, 'questionN_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionO', @descriptions).report
      TextQuestionReporter.new(@data, 'questionP', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionQ', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionR', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionS', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionT', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionT_1_additional', @descriptions).report
      TextQuestionReporter.new(@data, 'questionT_2_additional', @descriptions).report
      TextQuestionReporter.new(@data, 'questionT_3_additional', @descriptions).report
      TextQuestionReporter.new(@data, 'questionT_4_additional', @descriptions).report
      TextQuestionReporter.new(@data, 'questionT_additional', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'questionU', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionV', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'questionW', @descriptions).report
      TextQuestionReporter.new(@data, 'questionW_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionX', @descriptions).report
      TextQuestionReporter.new(@data, 'questionX_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionY', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'questionZ', @descriptions).report
      TextQuestionReporter.new(@data, 'questionZ_additional', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'questionAA', @descriptions).report
      TextQuestionReporter.new(@data, 'questionAA_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionAB', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionAC', @descriptions).report
      TextQuestionReporter.new(@data, 'questionAC_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionAD', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionAE', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionAF', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionAG', @descriptions).report
      TextQuestionReporter.new(@data, 'questionAG_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionAH', @descriptions).report
      TextQuestionReporter.new(@data, 'questionAH_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionAI', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionAJ', @descriptions).report
      TextQuestionReporter.new(@data, 'questionAJ_additional', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionAK_2', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionAK_3', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionAK_4', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionAK_5', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionAK_6', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionAK_7', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionAK_8', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionAL', @descriptions).report
      RadioQuestionReporter.new(@data, 'questionAM', @descriptions).report
      TextQuestionReporter.new(@data, 'questionAM_additional', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'questionAN', @descriptions).report
      CheckboxQuestionReporter.new(@data, 'questionAO', @descriptions).report

      output FOOTER
    end

  end

end
