class Storage

  def initialize
    @sample = {}
  end

  attr_accessor :sample

  def load
    raise NotImplementedError
  end

end
