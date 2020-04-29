code_list = {
  "city1" => "001",
  "city2" => "002",
  "city3" => "003",
  "city4" => "004"
}

puts "Do you want a list of area codes?"
input = gets.chomp.downcase
if input == "y"
  puts code_list.keys
elsif input == "n"
  puts "what do you want to do then?"
else
  puts "invalid entry"
end
