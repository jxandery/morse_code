require './morse'
  puts "Enter your message:"
  input = gets.chomp
  morse = Morse.new
  puts "The translated morse version is: #{morse.encode_message(input)}"
