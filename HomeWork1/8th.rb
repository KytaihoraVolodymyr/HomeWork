#  8. Пользователь вводит сумму денег в кошельке и цену одной шоколадки. 
#     Программа выводит сколько шоколадок может купить пользователь и сколько сдачи у него останется.

def shopping
    puts("Введите сумму денег в кошельке")
    cash = gets.chomp().to_f

    puts("Введите цену одной шоколадки")
    price = gets.chomp().to_f

    count = cash / price #к-ство шоколадок
    restOfMoney = cash-(count.truncate()*price) #сдача

    puts("Вы можете купить " + count.truncate().to_s + " шоколадок") #truncate_округляем до нуля
    puts("Ваша сдача " + restOfMoney.round(2).to_s)
end    

shopping