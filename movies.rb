movies = {
	'Equilibrium' => '4',
	'LOTR' => '3',
}

puts "What would you like to do?"
choice = gets.chomp

case choice
	when "add"
		puts "Title: "
		title = gets.chomp

		puts "Rating [1-5]: "
		rating = gets.chomp

			if movies[title.to_sym] = nil
				movies[title.to_sym] = rating.to_i
			else
				puts "That movie is already added!"
			end

	when "update"
		puts "Title: "
		title = gets.chomp

			if movies[title.to_sym] = nil
				puts "That movie hasn't been added!"
			else
				puts "Rating: "
				rating = gets.chomp
				movies[title.to_sym] = rating.to_i
			end

	when "display"
		movies.each do |movie, rating|
	    		puts "#{movie}: #{rating}"
		end
	when "delete"
		puts "Title: "
		title = gets.chomp

			if movies[title.to_sym] = nil
	    			puts "That movie hasn't been added!"
			else
	    			movies.delete(title)
			end

	else
		puts "Error!"
end
