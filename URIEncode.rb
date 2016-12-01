require 'net/http'
require 'net/https'
require "uri"


str = "text to encode"
strEncoded =  URI::encode(str)


uri = URI.parse("https://test.com")
https = Net::HTTP.new(uri.host,uri.port)
https.use_ssl = true
req = Net::HTTP::Post.new(uri.path)
req['X'] = strEncoded
res = https.request(req)
puts res.body