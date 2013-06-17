require 'json'
require 'open-uri'


class HTMLGenerator

	def index(search_text)

		products = retrieve_data("http://lcboapi.com/products?q=#{search_text}")

		print_header

		puts "<h1>All products</h1>"

		products.each do |product|
		puts "<div class='product'>"
		puts "	<h2>#{product['name']}</h2>"
		puts "	<img src= '#{product['image_thumb_url']}' class='product_image'/>"
		puts "  <ul class='product-data'>"
      	puts "    <li>id: #{product['id']}</li>"
      	puts "    <li>#{product['producer_name']}</li>"
      	puts "    <li>#{product['primary_category']}</li>"
      	puts "    <li>#{product['volume_in_milliliters']} ml</li>"
      	puts "    <li>$#{format_price(product['price_in_cents'])}</li>"
      	puts "  </ul>"
      	puts "</div>"
      	end

      	print_footer

	end

	def show(display_term)

		product = retrieve_data("http://lcboapi.com/products/#{product_id}")

	    print_header
	    puts "<div class='product'>"
	    puts "  <h2>#{product['name']}</h2>"
	    puts "  <img src='#{product['image_url']}'  class='product-image'/>"
	    puts "  <ul class='product-data'>"
	    puts "    <li>id: #{product['id']}</li>"
	    puts "    <li>#{product['producer_name']}</li>"
	    puts "    <li>#{product['primary_category']}</li>"
	    puts "    <li>#{product['secondary_category']}</li>"
	    puts "    <li>#{product['origin']}</li>"
	    puts "    <li>#{product['volume_in_milliliters']} ml</li>"
	    puts "    <li>#{product['serving_suggestion']}</li>"
	    puts "    <li>#{product['tasting_note']}</li>"
	    puts "    <li>Tags: #{product['tags']}</li>"
	    puts "  </ul>"
	    puts "</div>"
	    print_footer

	end

	def print_header

		puts "<html>"
		puts "	<head>"
		puts "		<title>Connoisseur</title>"
		puts "		<link rel= 'stylesheet' href='visual.css' type= 'text/css'>"
		puts "		<link rel= 'stylesheet' href='' type= 'text/css'>"
		puts "	</head>"
		puts "	<body>"

	end

	def print_footer

		puts "	</body>"
		puts "</html>"

	end

	def retrieve_data(url)#need to assign a value to the variable
		raw_response = open(url).read
		data = JSON.parse(raw_response)
		result = data["result"]
		return result #need to change the return thing
	end

	def format_price(cents_string)
		 cents_string.to_f/100
	end
end