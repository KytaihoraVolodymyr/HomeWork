#  7. Пользователь указывает объем флешки в Гб.
#     Программа должна посчитать сколько файлов размером в 820 Мб помещается на флешку

def flashCard
    puts("Введите размер накопителя в Гб")
    memoryValue = 1024 * gets.chomp().to_i #сколько всего Мб на флешке
    count = memoryValue / 820 

    puts("Ваша флешка может содержать " + count.to_s + " файлов размером в 820 Мб")
end    

flashCard