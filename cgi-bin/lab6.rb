#!/usr/bin/ruby -w 
puts "Content-type: text/html\n\n"
require 'cgi'
cgi = CGI.new
n = cgi['name']
a = cgi['address'].split.map(&:capitalize).join(' ')
p = cgi['phoneno']

puts "<html>"
puts "<head>"
puts "
<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js \"></script>
<script>
$(document).ready(function(){
	$('span').hide();
	$('#red').fadeIn(1500);
	$('#blue').fadeIn(3000);
	$('#green').fadeIn(4500);
		});
</script>
"
puts "<link rel=\"stylesheet\" type=\"text/css\" href=\"http://scs.ryerson.ca/~mmfahim/lab6/style.css\">"
puts "<title>Ruby Form</title>"
puts "</head>"
puts "<body>"
puts "<h1>Here is your information, #{n}</h1>"
puts "<div>"
puts "<p>Name: #{n}</p>"
puts "<p>Address: #{a}</p>"
puts "<p>Phone: <b>"
p.split('-').each_with_index do |set, index| 
if index == 0 
    puts "<span id = \"red\" style = \"color: red;\">(#{set})  </span>"
elsif index == 1
	puts "<span id = \"blue\" style = \"color: blue;\">#{set} </span>"
else
    puts "<span id = \"green\" style = \"color: green;\">#{set} </span>"
end
	if index < p.split('-').size - 1
		puts "-"
	end
end
puts "</b></p>"

puts "</div>"
puts "</body>"
puts "</html>"