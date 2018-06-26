class PigLatinizer

  def initialize()

  end

  def piglatinize(text_to_change)
    arr = split_sentence(text_to_change)
    if(arr.count == 1) then
      piglatin(arr[0])
    else
      arr.map do |word|
        piglatin(word)
      end.join(" ")
    end
  end

  def split_sentence(sentence)
    return sentence.split
  end

  def piglatin(word)
    if(word[0].match(/[AEIOUaeiou]/))
      word.concat("way")
    else
      letters = word.match(/^([^AEIOUaeiou])*/)
      #letter_to_append = letters.to_s + "ay"
      letters_to_append = word.slice!(0..letters.to_s.size - 1)
      new_word = word.concat(letters_to_append + "ay")
    end
  end






end
