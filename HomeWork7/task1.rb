def random_string()
    login = ''

    chars1 = 'ABCDEFGHJKLMNPQRSTUVWXYZ'
    login << chars1[rand(chars1.size)]

    length = rand(1..20)
    chars2 = 'abcdefghjkmnpqrstuvwxyz0123456789'
    length.times { login << chars2[rand(chars2.size)] }
    
    return login
end

p random_string