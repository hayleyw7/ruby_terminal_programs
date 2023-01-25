print "What would you like to translate? "

user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
  puts "Translation: #{user_input}"
else
  if user_input == ""
    puts "Say something!"
  else
    puts "No translation necessary."
  end
end
