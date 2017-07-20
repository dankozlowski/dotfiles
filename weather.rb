require 'uri'
require 'net/http'
require 'json'
require 'pry'

url = "api.openweathermap.org/data/2.5/weather.json?q=Seattle&APPID=52e98ba725e421082ee72dc096880061"
uri = URI.parse(url)
http = Net::HTTP.new(uri.host, uri.port)
response = http.request(Net::HTTP::Get.new(uri.request_uri))

hash = JSON.parse(response.body)

binding.pry


