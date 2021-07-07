cars = [
    {
        :year => 2020,
        "name" => "Skoda",
        "model" => "Karoq",
        :mileage => 10000,
        :color => "blue"
    },
    {
        :year => 2008,
        "name" => "Kia",
        "model" => "Ceed",
        :mileage => 16000,
        :color => "blue"
    },
    {
        :year => 2013,
        "name" => "Kia",
        "model" => "Soul",
        :mileage => 150000,
        :color => "white"
    },
    {
        :year => 1988,
        "name" => "Peugeot",
        "model" => "405",
        :mileage => 320000,
        :color => "blue"
    },
    {
        :year => 2017,
        "name" => "Nissan",
        "model" => "Quashkai",
        :mileage => 45000,
        :color => "violet"
    },
    {
        :year => 1972,
        "name" => "ВАЗ",
        "model" => "2103",
        :mileage => 480000,
        :color => "dark red"
    },
    {
        :year => 2002,
        "name" => "Nissan",
        "model" => "X-Trail",
        :mileage => 213000,
        :color => "green"
    }
]
#1################################
=begin
def averageMiles carr
    carCount = 0
    milesCount = 0
    carr.each do |car|
        milesCount += car[:mileage]
        carCount +=1
    end   
    out = milesCount/carCount 
    return out
end    
p averageMiles cars
=end
#2################################
=begin
def averageBorn carr
    carCount = 0
    yearCount = 0
    carr.each do |car|
        yearCount += car[:year]
        carCount +=1
    end   
    out = yearCount/carCount 
    return out
end 
p averageBorn cars
=end
#3################################
=begin
def averageAge carr
    carCount = 0
    carAge = 0
    yearNow = (Time.now).year
    carr.each do |car|
        carAge += yearNow - car[:year]
        carCount +=1
    end   
    out = carAge/carCount 
    return out
end 
p averageAge cars
=end
#4#################################
=begin
def averageMilesYear carr
    carCount = 0
    averCarMileToYear = 0
    yearNow = (Time.now).year
    carr.each do |car|
        averCarMileToYear += car[:mileage] / (yearNow - car[:year])#среднийПробег/год
        carCount +=1
    end   
    out = averCarMileToYear/carCount 
    return out
end 
p averageMilesYear cars
=end
#5#################################
=begin
def medMiles carr
    arr = []
    carr.each do |car|
        arr << car[:mileage]
    end
    arr.sort!
    #количествоАвтоХешей
    if arr.length % 2 == 0 
        mediana = (arr[arr.length/2] + arr[arr.length/2 - 1]) / 2
        return mediana
    else 
        mediana = arr[arr.length/2]
        return mediana
    end     
end
p medMiles cars
=end
#6#################################
=begin
def medianaYearIssue carr
    arr = []
    carr.each do |car|
        arr << car[:year]
    end
    arr.sort!

    if arr.length % 2 == 0
        mediana = (arr[arr.length/2] + arr[arr.length/2 - 1]) / 2
        return mediana
    else 
        mediana = arr[arr.length/2]
        return mediana
    end
end    
p medianaYearIssue cars
=end
#7##################################
=begin
def medianaAge carr
    arr = []
    yearNow = (Time.now).year
    carr.each do |car|
        arr << (yearNow - car[:year])
    end
    arr.sort!

    if arr.length % 2 == 0
        mediana = (arr[arr.length/2] + arr[arr.length/2 - 1]) / 2
        return mediana
    else 
        mediana = arr[arr.length/2]
        return mediana
    end
end    
p medianaAge cars
=end
#8####################################
=begin
def medianaMiles carr
    arr = []
    yearNow = (Time.now).year
    carr.each do |car|
        arr << (car[:mileage] / (yearNow - car[:year]))#среднийПробег/год
    end   
    arr.sort!
    if arr.length % 2 == 0
        mediana = (arr[arr.length/2] + arr[arr.length/2 - 1]) / 2
        return mediana
    else 
        mediana = arr[arr.length/2]
        return mediana
    end
end    
p medianaMiles cars
=end
#9#####################################
=begin
def favColor carr
    stat = {}
    arr = []
    carr.each do |car|
        color = car[:color]
        stat[color] = stat.has_key?(color) ? stat[color] + 1 : 1
    end  

    count = 1 
    stat.each_value {|col| col > count ? arr << stat.key(col) : count = col}

    return arr
end
p favColor cars
=end
#10#######################################
def rareColor carr 
    stat = {}
    arr = []
    carr.each do |car|
        color = car[:color]
        stat[color] = stat.has_key?(color) ? stat[color] + 1 : 1
    end  
    #puts stat
    count = 1
    stat.each_value do |col|
        if col == count
            arr << stat.key(col)
        else
            count +=1
        end      
    end 

    return arr
end
p rareColor cars