require "./html_generator"

if ARGV.empty
	puts "You must enter some action"
	break
else
	action = ARGV[0]
end

if action == "index"
	search_term = ARGV[1]
else
	action == "show"
	display_term = ARGV[1]
	