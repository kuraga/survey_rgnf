require_relative 'common_comparing_y_reporter'

module Comparings

  class GroupedComparingYReporter < CommonComparingYReporter

    def initialize(data)
      super data

      @sample_size = data.values.collect(&:values).collect(&:flatten).collect(&:length)[0]
    end

  end

end
