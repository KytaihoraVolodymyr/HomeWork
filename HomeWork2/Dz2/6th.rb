puts "Enter your sentense"
arr = gets.chomp().split
newArr = []
(1..9).each {|x| arr.each {|word|  newArr << word if word.include?(x.to_s)
      }
    }
print newArr.join(" ") 


#arr = ['zora1', 'dor3df', 'sdf2']
#a = arr[0].delete("a-z")
#puts arr