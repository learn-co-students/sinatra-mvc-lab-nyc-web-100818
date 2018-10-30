class PigLatinizer 
    attr_reader :words
   
    def piglatinize(words)
        sentence = words.split(" ").map do |word|
            vowel_index = word.downcase.index(/[aeoui]/)
            if vowel_index && vowel_index == 0
                word + "way"
            else
                word[vowel_index..-1] + word[0..vowel_index - 1] + "ay"
                # binding.pry
            end
        end
        sentence.join(" ")
    end

end #end of class

# word[vowel_index..-1] "pork" => "ork" // word[0..vowel_index - 1] "p" // + "ay" => "orkpay"