require './morse'
  puts "Enter the morse code to be converted"
  input = gets.chomp
  morse = Morse.new
  puts "Your morse code translates to: #{morse.decode_message(input)}"
