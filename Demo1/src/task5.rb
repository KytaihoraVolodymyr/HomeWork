#minMax = {'min' => 71858, 'max' => 5432}
A = {'lucky' => [0,0]}

def num (minMax = nil)
    if minMax == nil
        return "Ошибка! Введите данные!"
    elsif minMax['min'] <= 0 or minMax['min'] > 999999 or minMax['max'] <= 0 or minMax['max'] > 999999
        return "Номер билета должен быть от 1 до 999999"
    end

    if minMax['min'] > minMax['max']
        minMax['min'], minMax['max'] = minMax['max'], minMax['min']
    end    
    
    for i in minMax['min']..minMax['max']
        arr = i.digits.concat([0,0,0,0,0]).slice(0, 6).reverse
        #p arr

        left = 0
        for i in 0...arr.length/2
            left +=arr[i]
        end    

        right = 0
        for i in arr.length/2...arr.length
            right +=arr[i]
        end

        chet = 0
        noChet = 0
        for i in 0..arr.length 
            if arr[i].to_i % 2 == 0 
                chet += arr[i].to_i
            else
                noChet = noChet + arr[i].to_i
            end    
        end

        if left == right
            A['lucky'][0] +=1
        end

        if chet == noChet
            A['lucky'][1] +=1
        end

        if A['lucky'][0] > A['lucky'][1]
            A['winner'] = 1
        else 
            A['winner'] = 2
        end        
        
        
    end
    return A
end
#puts num (minMax)