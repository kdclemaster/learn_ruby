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

def multiply *nums
	answer = 1
	nums.each do |num|
		answer *= num
	end
	answer
end

def power x, y
	x**y
end

def factorial num
	i = 1
	if num == 0
		return 1
	end
	while num > 0
		i = i * num
		num -= 1
	end
	return i
end
