require_relative 'processor'
require 'date'

# Год рождения / Возраст
class BirthyearProcessor < Processor

  def process
    case @data
      when /((?:19|20)\d{2})/ then $1
      when /0(\d)/            then "200#{$1}"
      when /(\d{1,2})/        then String(Date.today.year-Integer($1))
      else ''
    end
  end

end
