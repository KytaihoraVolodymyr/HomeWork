# 5 Shortest Word

puts "Enter your sentense"
string = gets.chomp()

def shortWord(string)
    arr = string.split(" ") #go_to_массив
    resultNum = arr.sort_by {|x| x.length} #сортировка_слов_возрастание
    puts resultNum[0].length.to_i
end  

shortWord(string)

# Simple, given a string of words, return the length of the shortest word(s).
# String will never be empty and you do not need to account for different data types.