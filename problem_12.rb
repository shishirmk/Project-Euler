#Problem at http://projecteuler.net/problem=12

def sum_upto(n)
	return (n*(n+1))/2 if n!= 1
	return 1
end

def factors(n)
	total = 0
	i = 1
	while i <= n
		if n%i == 0
			total += 1
		end
		i = i + 1
	end
	return total
end

#factors of (n *(n + 1))/2
def smart_factors(n)
	total = 0 
	if n%2 == 0
		a = factors(n/2)
		b = factors(n+1)
		return (a*b)
	else
		a = factors(n)
		b = factors((n+1)/2)
		return (a*b)
	end
end

i = 1
while true
	#triangle_number = sum_upto(i)
	#test  = factors(triangle_number).length
	total = smart_factors(i)
	puts "#{i} #{total}"
	if total > 500
		puts "#{sum_upto(i)} #{total}"
		break
	end
	i = i + 1
end