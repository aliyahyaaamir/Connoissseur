require 'open-uri'
require 'json'

raw_response = open("http://lcboapi.com/products.text").read
puts raw_response.class#.class#string

 booze_data = JSON.parse(raw_response)

 puts booze_data
# puts booze_data["status"].class #hash cannot use .status because there is no attr_accessor on the data file

# puts booze_data["result"]
