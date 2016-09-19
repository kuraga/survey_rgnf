require_relative 'common_comparing_bb_reporter'

module Comparings

  class GroupedComparingBbReporter < CommonComparingBbReporter

    def initialize(data)
      super data

      @sample_size = data.values.collect(&:values).collect(&:flatten).collect(&:length)[0]
    end

  end

end
