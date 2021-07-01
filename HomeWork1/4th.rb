# 4. Запросите у пользователя радиус окружности и выведите площадь такой окружности.

def radius
    puts("Введите радиус")
    radius = gets.chomp().to_i                              
    s = Math::PI*(radius**2)
    puts("Площадь = " + s.to_s)
end    

radius