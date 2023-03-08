puts "What's your favorite programming language?"
language = gets.chomp.downcase

case language
when "ruby"
  puts "Ruby is great for web apps."
when "python"
  puts "Python is great for science."
when "javascript"
  puts "JavaScript makes websites awesome."
when "html"
  puts "HTML is what websites are made of!"
when "css"
  puts "CSS makes websites pretty."
else
  puts "I don't know that language."
end
