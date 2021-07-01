#1. Запросите у пользователя его имя и выведите в ответ:
#«Привет, его имя!».

def sayHello 
    puts("Введите ваше имя")
    name = gets.chomp()
    puts("Привет, " + name + "!")
end

sayHello    