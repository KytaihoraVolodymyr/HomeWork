puts "Введите количество элементов массива"
kol = gets.chomp().to_i
old = Array.new

for i in 1..kol
    puts"Введите возраст"
    old << gets.chomp().to_i
end
print old  

def twoOldestAges old
    new = Array.new 
    sorted_arr = old.sort
    new << sorted_arr[-2] << sorted_arr[-1]
    print new
end
twoOldestAges(old)
