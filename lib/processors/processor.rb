class Processor

  def initialize(data)
    @data = data
  end

  def process
    raise NotImplementedError
  end

  protected

  def data_dup
    deep_dup @data
  end

  def deep_dup data_to_dup
    case data_to_dup
    when Hash
      data_to_dup.each_with_object({}) { |(key, value), duped_data| duped_data[deep_dup key] = deep_dup value }
    when Array
      data_to_dup.collect { |value| deep_dup value }
    else
      begin
        data_to_dup.dup
      rescue TypeError
        data_to_dup
      end
    end
  end

end
