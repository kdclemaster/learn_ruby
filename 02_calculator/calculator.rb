#write your code here
def add x, y
	x + y
end

def subtract x, y
	x - y
end

def sum x
	answer = 0
	x.each do |num|
		answer += num
	end
	answer
end

def multiply x, y
	x * y
end

def power x, y
	x**y
end

def factorial num
	ascendant = 1
	answer = 1
	while ascendant < num
		answer *= ascendant
		ascendant += 1
	end
	answer
end
