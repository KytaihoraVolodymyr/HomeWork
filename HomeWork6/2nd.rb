def abbrev str 
    return str.split(" ").map {|name| name[0].chr }.join.upcase
    #return str.scan(/\b\w/i).join.upcase #symbols,numbers,_,no_registr,insensitive
    #return str.gsub(/\s*(\S)\S*/, '\1').upcase
end
p abbrev "cascading style sheets"

