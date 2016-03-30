def get_class(camel_cased)
  names = camel_cased.split('::')

  # Trigger a built-in NameError exception including the ill-formed constant in the message.
  Object.const_get(camel_cased) if names.empty?

  # Remove the first blank element in case of '::ClassName' notation.
  names.shift if names.size > 1 && names.first.empty?

  names.inject(Object) do |constant, name|
    if constant == Object
      constant.const_get(name)
    else
      candidate = constant.const_get(name)
      next candidate if constant.const_defined?(name, false)
      next candidate unless Object.const_defined?(name)

      # Go down the ancestors to check if it is owned directly. The check
      # stops when we reach Object or the end of ancestors tree.
      constant = constant.ancestors.inject do |const, ancestor|
        break const    if ancestor == Object
        break ancestor if ancestor.const_defined?(name, false)
        const
      end

      # owner is in Object, so raise
      constant.const_get(name, false)
    end
  end
end


input_root = ARGV[0]
storage_file, storage_class_name = ARGV[1].split '='
processor_file_and_class_names = ARGV[2].split(',').collect { |processor_file_and_class_name| processor_file_and_class_name.split '=' }
reporter_file, reporter_class_name = ARGV[3].split '='


require_relative storage_file
processor_file_and_class_names.each do |processor_file, processor_class_name|
  require_relative processor_file
end
require_relative reporter_file


storage_class = get_class storage_class_name
storage = storage_class.new
storage.load input_root

processor_file_and_class_names.each do |(processor_file, processor_class_name)|
  processor_class = get_class processor_class_name
  processor = processor_class.new storage.sample
  storage.sample = processor.process
end

reporter_class = get_class reporter_class_name
reporter = reporter_class.new storage.sample
reporter.report
