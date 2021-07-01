# 2. Запросите у пользователя год его рождения, посчитайте, сколько ему лет и выведите результат. 
# Текущий год укажите в коде как константу.

YearNow = 2021 #внутри_метода
def howOld
    puts("Введите год своего рождения")
    birthYear = gets.chomp()
    result = YearNow-birthYear.to_i
    puts(result)
end   

howOld