require_relative 'processor'

# Хотели бы Вы жить в другой стране? (да; укажите, в какой)
class CountriesProcessor < Processor

  def process
    case @data
      when /сша|мерик|штат/i     then 'США'
      when /герм/i     then 'Германия'
      when /яп/i     then 'Япония'
      when /дуба|оаэ|эмир/i     then 'ОАЭ'
      when /бразил/i     then 'Бразилия'
      when /армен|армян/i     then 'Армения'
      when /англ|брит/i     then 'Великобритания'
      when /япон/i     then 'Япония'
      when /канад/i     then 'Канада'
      when /чех|чеш/i     then 'Чехия'
      else              'Другое'
    end
  end

end
