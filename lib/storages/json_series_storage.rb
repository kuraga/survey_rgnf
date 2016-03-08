require_relative 'json_storage'

class JsonSeriesStorage < JsonStorage

  SAMPLE_GLOB = nil

  def load(root)
    raise 'SAMPLE_GLOB not defined' if self.class::SAMPLE_GLOB.nil?

    sample_glob = File.join root, self.class::SAMPLE_GLOB
    load_from_glob sample_glob
  end

end
