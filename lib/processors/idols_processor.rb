require_relative 'processor'

# Вспомните, пожалуйста, на кого Вам хотелось быть больше всего похожим (-жей) в детстве? ("На одного из родственников"; укажи, на кого)
class IdolsProcessor < Processor

  def process
    case @data
      when /ма/i     then 'Мать'
      when /па|от/i  then 'Отец'
      when /де/i     then 'Дедушка'
      when /ба/i     then 'Бабушка'
      when /дя/i     then 'Дядя'
      when /т[её]/i  then 'Тётя'
      when /бра/i    then 'Брат'
      when /сес/i    then 'Сестра'
      else data_dup
    end
  end

end
