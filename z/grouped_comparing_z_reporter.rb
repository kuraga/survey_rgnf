require_relative 'common_comparing_z_reporter'

module Comparings

  class GroupedComparingZReporter < CommonComparingZReporter

    def initialize(data)
      super data

      @sample_size = data.values.collect(&:values).collect(&:flatten).collect(&:length)[0]
    end

  end

end
