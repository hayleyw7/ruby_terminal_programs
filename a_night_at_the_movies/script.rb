# this is an isolated draft lesson that will not actually update the object 

movies = {}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp

case choice
  when "add"
    puts "TITLE: What movie would you like to rate?"
    title = gets.chomp.to_sym

    if title == nil
      puts "You already rated that movie."
    else
      puts "RATING: How many stars would you give this movie?"
      rating = gets.chomp.to_i
      movies[title] = rating
      puts "ADDED: You have successfully added #{title}!"
    end

  when "update"
    puts "TITLE: What movie's rating would you like to update?"
    title = gets.chomp.to_sym

    if title == nil
      "You haven't yet rated this movie."
    else
      puts "RATING: To what would you like to update the rating?"
      rating = gets.chomp.to_i
      movies[title] = rating
      puts "UPDATED: You have successfully updated the rating for #{title}!"
    end

  when "display"
    movies.each { |movie, rating| 
      puts "#{movie}: #{rating}"
    }

  when "delete"
    puts "TITLE: What movie would you like to delete?"
    title = gets.chomp.to_sym

    if title == nil
      "You haven't yet rated this movie."
    else
      movies.delete(title)
      puts "DELETED: You have successfully deleted #{title}!"
    end

  else
    puts "ERROR: You didn't enter a valid option. Please start over."
end
