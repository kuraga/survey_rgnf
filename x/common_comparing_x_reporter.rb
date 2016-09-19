require_relative '../comparings/common_comparing_reporter'
require_relative '../lib/reporters/page_reporter_helper'

module X

  class CommonComparingXReporter < ::Comparings::CommonComparingReporter

    protected

    def report_annotation
      output "<h1>Представители X (всего #{@sample_size})</h1>"
    end

  end

end
