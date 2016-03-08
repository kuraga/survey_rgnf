require_relative '../lib/storages/json_series_storage'

module Teachers

  class TeachersStorage < JsonSeriesStorage

    SAMPLE_GLOB = 'survey2*.json'

  end

end
