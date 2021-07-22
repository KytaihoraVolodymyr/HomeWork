#envel_1 = {"a" => 4.0, "b" => 5.0}
#envel_2 = {"c" => 3.0, "d" => 4.0}

def see(envel_1, envel_2)
  if ((envel_1["a"] < envel_2["c"]) and (envel_1["b"] < envel_2["d"])) or ((envel_1["a"] < envel_2["d"]) and (envel_1["b"] < envel_2["c"])) 
    return 2
  elsif ((envel_2["c"] < envel_1["a"]) and (envel_2["d"] < envel_1["b"])) or ((envel_2["d"] < envel_1["a"]) and (envel_2["c"] < envel_1["b"])) 
    return 1  
  else 
    return 0 
  end
end  

def start(envel_1 = nil, envel_2 = nil)
  if envel_1 == nil or envel_2 == nil
    return "Ошибка! Введите данные!"
  elsif envel_1["a"] <= 0 or envel_1["b"] <= 0 or envel_2["c"] <= 0 or envel_2["d"] <= 0
    return "Введите стороны больше 0"
  end
  see(envel_1, envel_2)
end  

#p start(envel_1, envel_2)