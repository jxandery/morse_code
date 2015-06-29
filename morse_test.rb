require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './morse'

class MorseTest < Minitest::Test

  def test_it_exists
    assert Morse
  end

  def test_translates_a_into_morse
    morse = Morse.new
    assert_equal '.- ', morse.encode_message('a')
  end

  def test_translates_word_into_morse
    morse = Morse.new
    assert_equal '-.. . .- .-. ', morse.encode_message('dear')
  end

  def test_translates_multiple_words_into_morse
    morse = Morse.new
    assert_equal '-.. . .- .-.    .--- .- -.-. -.- ', morse.encode_message('dear jack')
  end

  def test_translates_word_with_punctuation_into_morse
    morse = Morse.new
    assert_equal '-.. . .- .-. , ', morse.encode_message('dear,')
  end

  def test_translates_morse_into_letter
    morse = Morse.new
    assert_equal 'a', morse.decode_message('.- ')
  end

  def test_translates_morse_into_word
    morse = Morse.new
    assert_equal 'dear', morse.decode_message('-.. . .- .-. ')
  end

  def test_translates_morse_into_words
    morse = Morse.new
    assert_equal 'dear jack,', morse.decode_message('-.. . .- .-.    .--- .- -.-. -.- , ')
  end
end
