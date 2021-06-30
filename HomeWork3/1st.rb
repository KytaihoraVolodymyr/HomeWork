puts "Введите количество элементов массива"
kol = gets.chomp().to_i
old = []

for i in 1..kol
    puts"Введите возраст"
    old << gets.chomp().to_i
end
print old   

sorted_arr = old.sort
new = []
new << sorted_arr[-2] << sorted_arr[-1]
print new