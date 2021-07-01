#  9. Запросите у пользователя трехзначное число и выведите его задом наперед. 
#     Для решения задачи вам понадобится оператор % (остаток от деления).

def convert
    puts("Введите трехзначное число")
    number = gets.chomp()

    odinitsi = number.to_i % 10
    desyatki = (number.to_i % 100) / 10 #необьязательно_не меняют позицию
    sotni = (number.to_i - (10 * desyatki + odinitsi)) / 100

    #puts("Единицы " + odinitsi.to_s)
    #puts("Десятки " + desyatki.to_s)
    #puts("Сотни " + sotni.to_s)
    
    newNumber = odinitsi * 100 + desyatki * 10 + sotni
    puts(newNumber)
end    

convert