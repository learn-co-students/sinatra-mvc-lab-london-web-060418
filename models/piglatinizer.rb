class PigLatinizer
  attr_accessor :text


    def piglatinize(string)
      # vowels = [AEIOUaeiou]
      new_string = []
      string_split = string.split(" ")

      string_split.each do |word|
        if /[aeiouAEIOU]/.match(word[0])
          new_string << (word + 'way')
        else
        split = word.split(/([aeiou].*)/)
        new_string << split[1] + split[0] + 'ay'
      end
    end
    new_string.join(" ")
  end

end
