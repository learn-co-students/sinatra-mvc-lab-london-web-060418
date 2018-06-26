class PigLatinizer
  # it 'has a method splits the sentence to piglatinize each word' do
  #   expect(words.piglatinize("i love programming")).to eq("iway ovelay ogrammingpray")

  def piglatinize(words)
    string = []
    words_split = words.split(" ")

    words_split.each do |word|
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
