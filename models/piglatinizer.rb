class PigLatinizer
  attr_accessor :text, :platin

  # def initialize
  #   @text = text.downcase
  #   latinize
  # end

  def piglatinize(text)
    @text = text
    words = text.split(' ')

    vowels = ['a','e','i','o','u']

    pl_words = words.map do |word|
      word_ary = word.split('')
      loop do
        if vowels.include?(word_ary[0].downcase)
          break
        else
          word_ary << word_ary.shift
        end
      end

      if vowels.include?(word[0].downcase)
        pl_word = word_ary.join('') + "way"
      else
        pl_word = word_ary.join('') + "ay"
      end
    end

    @platin = pl_words.join(' ')
  end
end
