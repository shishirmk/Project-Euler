#Problem at http://projecteuler.net/problem=4

def is_palindrome(num)
	real_num = num
	pal_num = 0
	while num > 0
		rem = num % (10)
		num = num / (10)
		pal_num = pal_num*10 + rem
	end
	if pal_num == real_num
		return true
	else
		#puts pal_num
		return false
	end
end

max = 0
(100..999).each do |i|
	(100..999).each do |j|
		prod = i * j
		if is_palindrome(prod)
			max = prod if max < prod
		end
	end
end

puts max