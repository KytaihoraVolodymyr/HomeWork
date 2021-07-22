def stroka(n = nil, m = nil)
    arr = []
    if n == nil or m == nil
        return "Ошибка! Введите данные!"
    elsif n < 0 or m < 0
        return "Ошибка!\n Введите натуральные числа!"
    elsif n > 0 and m > 0

        for i in Math.sqrt(m).ceil...(Math.sqrt(m) + n).ceil
            if i**2 >= m
                arr << i
            end
        end
    end
    return arr.join(', ')
end
#p stroka (-3, 9)


