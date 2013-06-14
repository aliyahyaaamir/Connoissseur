require 'json'
require 'open-uri'


class HTMLGenerator

	def index


	end

	def show

	end

	def print_header

	end

	def print_footer

	end

	def retrieve_data(url)#need to assign a value to the variable
		raw_response = open("http://lcboapi.com/products.json").read
		data = JSON.parse(raw_response)
	end

	def format_price(cents_string)

	end
end

raw_response = open("http://lcboapi.com/products.json").read
puts raw_response