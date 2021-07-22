def palindrome(string)
    for i in 0...string.length
        if string[i] != string[(string.length - 1) - i]
            return false
        end
    end
    return true
end
  
  def long_palindrome(value = nil)
        if value.class != Integer
            return "Ошибка!  Введите число от 10 до 1 000 000 000 000 000 000 000"
        elsif value > 9 and value < 1000000000000000000000    
            string = value.to_s                           
            newStr = ""  #Pal
            maxPal = nil  #maxPal
            for i in 0..string.length                     
                for j in 1..string.length                 
                    str = string.slice(i,j)               
                    count = str.length                    
                        if palindrome(str)                
                            if maxPal == nil or maxPal < count
                                newStr = str   #pal
                                maxPal = count   #lenPal
                            end    
                        end
                end
            end
            if newStr.length > 1 then return newStr.to_i else return 0 end
        else 
            return "Ошибка! Введите число от 10 до 1 000 000 000 000 000 000 000"
        end    
    end

#p long_palindrome(6)