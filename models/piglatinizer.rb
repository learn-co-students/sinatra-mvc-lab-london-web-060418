class PigLatinizer

  def piglatinize(text)
    vowels = ['a', 'e', 'i', 'o', 'u']
    words = text.split(' ')
    final_array = words.map do |w|
      word_arr = w.scan(/./)
      loop do
      if vowels.include?(word_arr[0].downcase)
        break
      else
        word_arr << word_arr.shift
        end
      end
      if vowels.include?(w[0].downcase)
        word_arr << "way"
        word_arr.join
      else
        word_arr << "ay"
        word_arr.join
      end
    end
    final_array.join(' ')

  end

end
