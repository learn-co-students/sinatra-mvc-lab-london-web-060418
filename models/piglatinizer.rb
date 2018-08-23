class PigLatinizer


	def piglatinize(word)
		@words = word
		vowels = %w(a e i o u A E I O U)
		words_array = @words.split(" ")
		prefix = ""
		new_words = ""
		pig_latin_arr = []
		words_array.each do |word|
			word_arr = word.split("")
			if vowels.include?(word_arr[0])
				way_word = word_arr.join("") + "way"
				pig_latin_arr << way_word
			else
				word.split("").each do |char|
					if vowels.include?(char)
						new_words = word_arr.join("") + prefix + "ay"
						pig_latin_arr << new_words 
						prefix = ""
						break
					else
						prefix += char
						word_arr.delete_at(0)
					end
				end
			end
		end
		pig_latin_arr.join(" ")
	end
end

