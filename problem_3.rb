def is_prime(num)
	last = (num/2).round()
	(2..last).each do |i|
		return false if num%i == 0
	end
	return true
end

real_comp = 600851475143

(2..real_comp).each do |i|
	quotient = real_comp/i
	if real_comp%i == 0 and is_prime(quotient)
		puts quotient
		break
	end
end