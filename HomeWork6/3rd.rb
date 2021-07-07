require 'uri'
def siteInfo pat
    uri = URI(pat)
    return "Протокол: " + uri.scheme + "," + " домен: " + uri.host + "," + " путь: " + uri.path
end

p siteInfo "https://career.softserveinc.com/en-us/learning-and-certification/formats-2/"