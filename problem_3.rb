def is_prime(num)
	last = (num/2).round()
	(2..last).each do |i|
		return false if num%i == 0
	end
	return true
end

def next_prime_number(m)
	m = m + 1
	while !is_prime(m)
		m = m + 1
	end
	return m
end

real_comp =  600851475143 #13195
comp = real_comp
prime = next_prime_number(1)
max = 0

i = 2
while real_comp%i != 0
 i = i + 1
end

last_check = (real_comp/i-1).round()

while prime < last_check
	while comp%prime == 0
		max = prime
		comp = comp/prime
	end
prime = next_prime_number(prime)
end

puts max