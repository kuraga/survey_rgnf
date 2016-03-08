class Reporter

  def initialize(data)
    @data = data
  end

  def report
    raise NotImplementedError
  end

  protected

  def output(*args)
    puts *args
  end

end
