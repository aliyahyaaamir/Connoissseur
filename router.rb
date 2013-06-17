require "./html_generator"

if ARGV.empty?
	puts "ruby router.rb [action]"
else
	action = ARGV[0]
end

htmlgen = HTMLGenerator.new

if action == "index"
	search_term = ARGV[1]
	htmlgen.index(search_term)

elsif action == "show"
	
	action == "show"
	display_term = ARGV[1]
	htmlgen.show(display_term)
end
