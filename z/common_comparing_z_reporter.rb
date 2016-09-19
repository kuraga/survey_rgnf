require_relative '../comparings/common_comparing_reporter'
require_relative '../lib/reporters/page_reporter_helper'

module Z

  class CommonComparingZReporter < ::Comparings::CommonComparingReporter

    protected

    def report_annotation
      output "<h1>Представители Z (всего #{@sample_size})</h1>"
    end

  end

end
