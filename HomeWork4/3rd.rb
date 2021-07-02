new = [[1, 2, 2], 
       [2, 1, 1], 
       [2, 1, 1]]
         
#строки/столбцы 
def lines(new)
    for i in 0...3
        if    new[i][0] == new[i][1] && new[i][0] == new[i][2] && new[i][0] == 1
            #puts" WON -> X strok"
            return 1  
        elsif new[i][0] == new[i][1] && new[i][0] == new[i][2] && new[i][0] == 2
            #puts" WON -> O strok"
            return 2
        elsif new[0][i] == new[1][i] && new[0][i] == new[2][i] && new[0][i] == 1
            #puts" WON -> X stolb"
            return 1
        elsif new[0][i] == new[1][i] && new[0][i] == new[2][i] && new[0][i] == 2
            #puts" WON -> O stolb"
            return 2         
        end
    end           
end 
#диагональ
def diagonals(new)
    if    new[0][0] == new[1][1] && new[0][0] == new[2][2] && new[0][0] == 1 
        #puts" WON -> X diag"
        return 1
    elsif new[0][0] == new[1][1] && new[0][0] == new[2][2] && new[0][0] == 2 
        #puts" WON -> O diag"
        return 2
    elsif new[0][2] == new[1][1] && new[0][2] == new[2][0] && new[0][2] == 1 
        #puts" WON -> X diag"
        return 1
    elsif new[0][2] == new[1][1] && new[0][2] == new[2][0] && new[0][2] == 2 
        #puts" WON -> O diag"
        return 2    
    end
end  

def start(new)
    if new.include?(0) 
        return -1
    elsif true 
        puts.lines(new)
        puts.diagonals(new)
    else 
        return 0     
    end
end
p start(new)    