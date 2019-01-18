#write your code here
def echo word
	word
end

def shout word
	word.upcase
end

def repeat word, times = 2
	spaced = word + " "
	spaced = spaced * times
	spaced.chop
end

def start_of_word word, amount
	word[0..amount-1]
end

def first_word string
	string.split[0]
end

def titleize string
	#hacky a little
	string = string.downcase
	capitalize = string.split
	little_words = ["and", "over", "the"]
	capitalize.each do |word|
		if (!little_words.include?(word) or capitalize[0] == word)
		word.capitalize!
		end
	end
	capitalize.join(' ')
end