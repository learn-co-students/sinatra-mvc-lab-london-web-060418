# Build a PigLatinizer model (in your models directory) that converts a string into pig latin.
class PigLatinizer

  def piglatinize(words)
    string = []
    words_split = words.split(" ")

    words_split.each do |word|
      #regex cheet sheet -
      if /[aeiouAEIOU]/.match(word[0])
        string << (word + 'way')
      else
        split = word.split(/([aeiou].*)/)
        string << split[1] + split[0] + 'ay'
      end
    end
    string.join(" ")
  end

end

# Here’s how it works: First, pick any English word. We’ll use “dictionary.”
# Next, move the first consonant or consonant cluster to the end of the word:
# “ictionary-d.” Now add “ay” to the end of the word: “ictionary-day.”
# That’s all there is to it; you’ve formed a word in Pig Latin.


# class PigLatinizer
#
#   def piglatinize(input_str)
#     x = (input_str.split(" ").length == 1) ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
#     puts x
#     x
#   end
#
#   private
#
#   def consonant?(char)
#     !char.match(/[aAeEiIoOuU]/)
#   end
#
#   def piglatinize_word(word)
#     # word starts with vowel
#     if !consonant?(word[0])
#       word = word + "w"
#     # word starts with 3 consonants
#     elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
#       word = word.slice(3..-1) + word.slice(0,3)
#     # word starts with 2 consonants
#     elsif consonant?(word[0]) && consonant?(word[1])
#       word = word.slice(2..-1) + word.slice(0,2)
#     # word starts with 1 consonant
#     else
#       word = word.slice(1..-1) + word.slice(0)
#     end
#     word << "ay"
#   end
#
#   def piglatinize_sentence(sentence)
#     sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
#   end
#
#
#
#
# end
