class Book
# write your code here
	def title
		@title
	end

	
	def title=(string)
		@title = titlize(string)
	end

	private

	def titlize(w)
		w = w.split(' ')
		lower_words = ['the', 'of', 'a', 'and', 'in', 'an']

		w.each do |word|
			if !(lower_words.include?(word) and w.index(word) != 0)
				word.capitalize!
			end
		end
		w = w.join(' ')
		return w
	end

end

