require 'rest-client'
require 'json'

puts "++++++++++++++++++++++++++++++++++++"
puts "Welcome to Movie Fact finder!"
puts "++++++++++++++++++++++++++++++++++++\n"

OMDB = "http://www.omdbapi.com/?t="

### Items of information we need to grab
random_facts = false
random_facts_arr = ['Runtime', 'Language', 'Country', 'Released']

awards = false
awards_arr = ['Awards']

puts "Would you like to read a random fact about a movie? yes OR no\n"
user_input = gets.chomp
if user_input == 'yes'
  random_facts = true
else
  puts "Would you rather get the award results of a given movie? yes OR no\n"
  user_input = gets.chomp
  if user_input == 'yes'
    awards = true
  end
end

puts "Enter in any movie title to get a random fact!\n"
puts "> "
user_input = gets.chomp
movie_title = "#{OMDB}#{user_input}&apikey=de1a74ed"

if movie_title
  response = JSON.parse(RestClient.get(movie_title))
  if random_facts == true
    puts "\n#{random_facts_arr[0]}: #{response[random_facts_arr[3]]}"
  elsif awards == true
    puts "\nAwards: #{response[awards_arr[0]]}"
  end
end
