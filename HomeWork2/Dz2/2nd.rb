# Золотой песок
# 
def input 
    puts "Введите a1 < 100"
    a1 = gets.chomp().to_i
    puts "Введите a2 < 100"
    a2 = gets.chomp().to_i
    puts "Введите a3 < 100"
    a3 = gets.chomp().to_i

    puts "Введите b1 < 100"
    b1 = gets.chomp().to_i
    puts "Введите b2 < 100"
    b2 = gets.chomp().to_i
    puts "Введите b3 < 100"
    b3 = gets.chomp().to_i
    entrance(a1, a2, a3, b1, b2, b3)
end

def entrance(a1, a2, a3, b1, b2, b3)
    if a1>100 || a2>100 || a3>100 || b1>100 || b2>100 || b3>100
        puts "Превышено значение вводимого параметра!"
        input
    end
    if a1 > a2
        c = a1
        a1 = a2
        a2 = c
    end
    if a2 > a3
        c = a2
        a2 = a3
        a3 = c
    end
    if a1 > a2
        c = a1
        a1 = a2
        a2 = c
    end
    if b1 > b2
        c = b1
        b1 = b2
        b2 = c
    end    
    if b2 > b3
        c = b2
        b2 = b3
        b3 = c
    end   
    if b1 > b2
        c = b1
        b1 = b2
        b2 = c 
    end 
    summ = a1*b1 + a2*b2 + a3*b3    
    puts "Зароботок " + summ.to_s
end    
input