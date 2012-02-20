#Problem at http://projecteuler.net/problem=6

#Square_of_sum - sum_of_squares

def sum_of_n(n)
	return (n*(n+1))/2
end

def sum_of_squares(n)
	return (n*(n+1)*(2*n+1))/6
end

sum = sum_of_n(100)
first = sum**2

second = sum_of_squares(100)

puts (first-second)