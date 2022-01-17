dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(dial_book)
  puts dial_book.keys
end
# Get area code based on given hash and key
def get_area_code(somehash,key)
  somehash[key]
end
  i = 0
loop do
  i = i + 1
  puts "Do you want to lookup area code based on a city name? (y/n)"
  break if gets.chomp.downcase == "n"
  puts "Which city do you want the area code for?"
  get_city_names(dial_book)
  puts "Enter your selection"
  citychoice = gets.chomp
  if dial_book.include?(citychoice)
    puts "The area code for #{citychoice} is #{get_area_code(dial_book,citychoice)}"
  else
    puts "You entered a city name not in the dictionary"
  end
  break if i ==4
end