def is_prime(num)
	last = (num/2).round()
	(1..last).each do |i|
		return false if num%i == 0 and i != 1 and i!= num
	end
	return true
end

count = 10001
i = 0
j = 2
while i != count
	if is_prime(j)
		i = i + 1
	end
	j =j + 1
end

puts j - 1
