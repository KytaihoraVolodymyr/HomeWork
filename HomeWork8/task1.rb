def roman(number)
    symbols = {1000 => "M",
                900 => "CM", 
                500 => "D",
                400 => "CD", 
                100 => "C",
                90 => "XC", 
                50 => "L",
                40 =>"XL", 
                10 => "X",
                9 => "IX", 
                5 => "V",
                4 => "IV",  
                1=> "I"}

    arr = []

    symbols.each do |val, sym|
        arr.push(sym * (number/val))
        number = number % val
    end
    return arr.join
end    

p roman(1467)