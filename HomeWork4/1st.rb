function meeting(x, need)
    return 'Game On' if need.zero?
    arr = [];
    ostatok = need;

    for i in 0...x.length
        if ostatok
            kol_needs = x[i][1]-x[i][0].length #кол_необход_стульев(разница_люди-стулья)
            arr.push(kol_needs > 0 ? kol_needs : 0)
            ostatok -= kol_needs if kol_needs > 0          
        else
            return arr      
        end      
    end
    return  arr
end