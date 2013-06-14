require 'open-uri'
require 'json'

raw_response = open("http://http://lcboapi.com/products.json")
puts raw_response.class#string

booze_data = JSON.parse(raw_response)

puts booze_data.class
puts booze_data["status"].class #hash cannot use .status because there is no attr_accessor on the data file

puts booze_data["result"]
