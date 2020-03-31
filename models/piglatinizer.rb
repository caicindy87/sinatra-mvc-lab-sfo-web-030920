require 'pry'
class PigLatinizer

    def piglatinize(user_words)
        split_text = user_words.split(" ")
        pig_latinized = split_text.map {|word| piglatinize_word(word)}
        pig_latinized.join(" ")
    end

    def piglatinize_word(word)
        first_letter = word.split("")[0].downcase

        if ['a', 'e', 'i', 'o', 'u'].include?(first_letter)
            word += "way"
        else
            consonants = []
            consonants << word[0]

            if !['a', 'e', 'i', 'o', 'u'].include?(word[1])
                consonants << word[1]
                if !['a', 'e', 'i', 'o', 'u'].include?(word[2])
                    consonants << word[2]
                end
            end

            "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end

    end

end
