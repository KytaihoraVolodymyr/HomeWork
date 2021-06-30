puts "Enter DNA"
string = gets.upcase.chars #верхний_регистр + разбили_на_символы
newDNA = [] #новая_ДНК
for k in string
    if k =="A" 
        newDNA << "T"
    end  
    if k =="T" 
        newDNA << "A"
    end
    if k =="C" 
        newDNA << "G"
    end  
    if k =="G" 
        newDNA << "C"
    end
end
puts newDNA.join #склеиваем_массив в строку

# DNA_strand ("ATTGC") # return "TAACG"
# DNA_strand ("GTAT") # return "CATA"


