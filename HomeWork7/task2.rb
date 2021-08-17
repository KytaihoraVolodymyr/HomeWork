def shuffle 
    array = [1,3,2,5,4,7]
    array.sort_by!{rand}
end
p shuffle