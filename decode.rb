require './morse'
  input = gets.chomp
  morse = Morse.new
  puts morse.decode_message(input)
