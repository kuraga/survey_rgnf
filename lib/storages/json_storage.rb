require_relative 'storage'
require 'json'

class JsonStorage < Storage

  def load(glob)
   load_from_glob glob
  end

  protected

  def load_from_file(file_name)
    json = File.read file_name
    @sample[file_name] = JSON.parse json
  end

  def load_from_glob(glob)
    Dir[glob].each do |file_name|
      load_from_file file_name
    end
  end

end
