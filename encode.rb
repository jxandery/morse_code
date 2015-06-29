require './morse'
  input = gets.chomp
  morse = Morse.new
  puts morse.encode_message(input)
