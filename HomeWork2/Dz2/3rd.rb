puts "Vvvedi stroku"
string = gets.to_s

def counter(string)
    string1 = string.downcase
    p = string1.chars.uniq.count { |char| string1.count(char) > 1 }
    puts p
end
counter(string)