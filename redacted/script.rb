puts "Type a phrase: "
text = gets.chomp

puts "Word to redact from phrase: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end
