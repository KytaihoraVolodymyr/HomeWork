def converter(val, a, b)
    # D E G R E E
    if a == 'c' and b == 'f' 
        return val * (-17.22) #funDegree[b]

    elsif a == 'f' and b == 'c' 
        return (val - 32) * (5/9.0)

    elsif a == 'f' and b == 'k' 
        return  (val - 32) * (5/9.0) + 273.15

    elsif a == 'k' and b == 'f' 
        return  (val - 273.15) * (9.0/5) + 32

    elsif a == 'c' and b == 'k' 
        return  val + 273.15

    elsif a == 'k' and b == 'c' 
        return  val - 273.15
        
    # L E N G T H
    elsif a == 'mm' and b == 'cm' 
        return  val/10

    elsif a == 'cm' and b == 'mm' 
        return  val*10

    elsif a == 'mm' and b == 'dm' 
        return  val/100
    elsif a == 'dm' and b == 'mm' 
        return  val*100

    elsif a == 'mm' and b == 'm' 
        return  val/1000
    elsif a == 'm' and b == 'mm' 
        return  val*1000

    elsif a == 'mm' and b == 'km' 
        return  val/1000000
    elsif a == 'km' and b == 'mm' 
        return  val*1000000

    elsif a == 'cm' and b == 'dm' 
        return  val/10
    elsif a == 'dm' and b == 'cm' 
        return  val*10

    elsif a == 'cm' and b == 'm' 
        return  val/100
    elsif a == 'm' and b == 'cm' 
        return  val*100

    elsif a == 'cm' and b == 'km' 
        return  val/100000
    elsif a == 'km' and b == 'cm' 
        return  val*100000

    elsif a == 'dm' and b == 'm' 
        return  val/10
    elsif a == 'm' and b == 'dm' 
        return  val*10

    elsif a == 'dm' and b == 'km' 
        return  val/10000
    elsif a == 'km' and b == 'dm' 
        return  val*10000

    elsif a == 'm' and b == 'km' 
        return  val/1000
    elsif a == 'km' and b == 'm' 
        return  val*1000
    end

end

p converter(100, 'k', 'c')