class PigLatinizer
  attr_reader :pig_latin
   def initialize
    
  end
   def piglatinize(sentence)
    new_sentence = sentence.split(" ").map{|word|
      first_vowel_index = word.downcase.index(/[aeiou]/)
      if first_vowel_index && first_vowel_index == 0
        word + "way"
      else
        word[first_vowel_index..-1] + word[0..first_vowel_index - 1] + "ay"
      end
    }
    new_sentence.join(" ")
  end
 end 