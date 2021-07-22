def chess (d, s, symbol)
  arr=[]
  for i in 0...d 
      for j in 0...s
          if (i+j) % 2 == 0
              arr << (symbol)
          else 
              arr << (' ')
          end 
      end
  arr << ("\n")
  end
  return arr
end  

def start(d = nil, s = nil , symbol = nil)
  if d.class != Integer or s.class != Integer or symbol.class != String
    return " Ошибка!\n Введите данные!"
  elsif d <= 0 and s <= 0 and symbol.length != 1
    return " Ошибка!\n Введите длину, ширину > 0 и символ"
  elsif d <= 0
    return " Ошибка!\n Введите длину > 0"
  elsif s <= 0   
    return " Ошибка!\n Введите ширину > 0"
  elsif (symbol.length) != 1
    return " Ошибка!\n Введите один символ"
  else 
    str = chess(d, s, symbol)
    return str.join
  end
end

#print start(5,5,"*")