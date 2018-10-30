require 'pry'

class PigLatinizer

  attr_accessor :sentence

  def initialize(sentence)
    @sentence = sentence
  end

  def pigify

    pig_array = []

    array = self.sentence.split(" ")
    
    array.each do |word|
      word_array = word.split("")
      letter = word_array.shift
      pig_word = word_array.join << (letter + "ay")
      pig_array << pig_word
    end

    result = pig_array.join(" ")

    result
  end

end #class PigLatinizer
