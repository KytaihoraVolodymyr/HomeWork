def numberToText(number)
    one = ['Один', 'Два', 'Три', 'Четыре', 'Пять', 'Шесть', 'Семь', 'Восемь', 'Девять']
    second = ['Десять', 'Одинадцать', 'Двенадцать', 'Тринадцать', 'Четырнадцать', 'Пятнадцать', 'Шестнадцать', 'Семьнадцать', 'Восемьнадцать', 'Девяднадцать', 'Двадвать']
    ten = ['Двадцать', 'Тридцать', 'Сорок', 'Пятьдесят', 'Шестьдесят', 'Семьдесят', 'Восемьдесят', 'Девяносто']
    
    if number > 0 && number <= 9
      return one[number - 1]
    
    elsif number >= 10 && number <= 20
      return second[number - 10]

    elsif number > 20 && number <= 99
      str = number.to_s
      new = Array.new
      new << ten[str[0].to_i - 2] << one[str[1].to_i - 1]
      return new.join(" ")
    end
end
puts(numberToText(28))