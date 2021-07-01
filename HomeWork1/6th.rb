# 6. Реализуйте конвертор валют. Пользователь вводит доллары, 
#    программа переводит в евро. Курс валюты храните в константе.

Euro = 32.84

def converter
    puts("Введите сумму в долларах")
    dollars = gets.chomp().to_f 
    
    summ = dollars * Euro

    puts("Ваша сумма равна " + summ.round(2).to_s + " euro")
end    

converter
