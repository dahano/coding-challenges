# coding-challenges

<h1>Coding Challenges to help develop Anthony Banks into an automation savage</h1>

<short>As a user I want to find out interesting facts about any movie that I search for. You’re tasked with building a terminal program that will allow the user to search for movies by title and you’ll return interesting facts about it. You’re going to use a free Movie Database API called omdbapi. I will layout which libraries you’ll need to use and below you’ll find some examples.</short>
	
API:
1) Go to http://www.omdbapi.com and get an API key (sign up with your email)
2) Once you get your email with your key, you’ll be able to make requests similar to this http://www.omdbapi.com/?t=A+Clockwork+Orange&apikey=de1a74ed 
 - In this case, the Title: "A Clockwork Orange",

Libraries / Gems:
- Github (https://github.com/rest-client/rest-client)
- Ruby Gem (https://rubygems.org/gems/rest-client)
- JSON (comes standard with Ruby, just add the require statement to the top)

Questions:
- Look through the response (the clockwork orange example) and based on that data, compile questions to ask the user.
- Remember, you'll need to take into account a user answering either Yes or No.

Running it in the Terminal:
- This whole thing can run inside the terminal, no fancy UI needed
- Look into the gets.chomp (gets means get-string) for helping with grabbing input from the user from the terminal


