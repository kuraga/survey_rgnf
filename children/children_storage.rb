require_relative '../lib/storages/json_series_storage'

module Children

  class ChildrenStorage < JsonSeriesStorage

    SAMPLE_GLOB = 'survey1*.json'

  end

end
