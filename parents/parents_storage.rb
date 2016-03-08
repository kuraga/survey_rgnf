require_relative '../lib/storages/json_series_storage'

module Parents

  class ParentsStorage < JsonSeriesStorage

    SAMPLE_GLOB = 'survey3*.json'

  end

end
