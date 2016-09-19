require_relative '../comparings/common_comparing_reporter'
require_relative '../lib/reporters/page_reporter_helper'

module Bb

  class CommonComparingBbReporter < ::Comparings::CommonComparingReporter

    protected

    def report_annotation
      output "<h1>Представители BB (всего #{@sample_size})</h1>"
    end

  end

end
