#write your code here
def translate string
	string = string.split
	string.each do |word|
		string[string.index(word)] = latinize(word)
end
	string.join(" ")

end

def latinize word
	#add qu into the regex somehow
	if (word.index(/[aeiou]/) == 0)
		return word + 'ay'
	elsif (word[0..1] == 'qu')
		word = word + 'quay'
		return word.slice!(2..-1)
	elsif (word[1..2] == 'qu')
		word = word + word[0..2] + "ay"
		return word.slice!(3..-1)
	else
		i = word.index(/[aeiou]/)
		word = word + word[0..(i-1)] + "ay"
		word.slice!(i..-1)
	end
end