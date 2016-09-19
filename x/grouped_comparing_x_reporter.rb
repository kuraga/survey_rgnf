require_relative 'common_comparing_x_reporter'

module Comparings

  class GroupedComparingXReporter < CommonComparingXReporter

    def initialize(data)
      super data

      @sample_size = data.values.collect(&:values).collect(&:flatten).collect(&:length)[0]
    end

  end

end
