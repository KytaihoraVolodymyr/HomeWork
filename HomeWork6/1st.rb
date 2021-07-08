def camelize( str ) 					
	wordArr = str.split('-')
		for i in 1...wordArr.length
			charArr =  wordArr[i].split("")
			charArr[0] = wordArr[i][0].upcase()
			wordArr[i] = charArr.join("")
        end
	str = wordArr.join("")
	return str
end     			
#with some problems   	
=begin
def camelize(str)
    arr = str.split('-')
     for i in 1...arr.length
     #преобр первый символ с большой буквы
     arr[i] = arr[i][0].upcase() + arr[i].slice(1)
     #взять все элементы, начиная с номера 1
     end
     return arr.join('')
end
=end

p camelize("background-color")
p camelize("font-size")
p camelize("text-align")

#Написать функцию, которая преобразует названия cssстилей с 
#дефисом в название в СamelСase стиле: font-size в fontSize, 
#background-color в backgroundColor, text-align в textAlign.