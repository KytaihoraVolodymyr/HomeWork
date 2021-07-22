def funct(triangles = nil)
  if triangles == nil 
    return "Ошибка! Введите данные!"
  else
    areas = []
    triangles.each do |tr| a, b, c = tr['vertices'].downcase.split(//) #arr
      if tr[a] <= 0 or tr[b] <= 0 or tr[c] <= 0
        return "Ошибка! Введите стороны больше 0"
      else
        p = (tr[a] + tr[b] + tr[c]) / 2
        s = Math.sqrt(p * (p-tr[a]) * (p-tr[b]) * (p-tr[c]))
        areas.push([s, tr['vertices']])
      end
    end
    areas.sort!.reverse!
    result = []
    
    areas.each do |area| result.push(area[1])
    end      
    return result
  end
end

#p funct triangles

