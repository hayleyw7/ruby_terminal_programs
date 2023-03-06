puts "Enter a language to see greeting."
language = gets.chomp.downcase

# Add your case statement below!

case language
  when "english" then puts "Hello!"
  when "french" then puts "Bonjour!"
  when "german" then puts "Guten Tag!"
  when "finnish" then puts "Haloo!"
  when "spanish" then puts "Hola!"
  else puts "I don't know that language!"
end
