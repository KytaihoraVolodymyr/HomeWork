list = [[7, 1, 3], [3, 2, 1],[7, 9, 2]]

def minSum arr
 #print arr
  sum = 0
  arr.each do |mass| 
     sum += mass.min
  end
 puts " Minimum value of row is #{sum}"
end
minSum (list)

=begin
puts "Введите количество массивов -> M"
m = gets.chomp().to_i
puts "Введите количество элементов в массиве -> N"
n = gets.chomp().to_i
new = Array.new(m) {Array.new(n)}

for i in 1..m*n
    puts "Введите элемент массива #{i}" 
        number = gets.chomp().to_i
        new[i] = number     
    end  
end  
print new
=end