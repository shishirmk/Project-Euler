#Problem at http://projecteuler.net/problem=2
n1 = 1
n2 = 2
fib_array = Array.new
fib_array << n1
fib_array << n2
prev = 2
prev_prev = 1
num = prev + prev_prev
while num < 4000000
	fib_array << num
	prev_prev = prev
	prev = num
	num = prev + prev_prev
end

sum = 0
for num in fib_array
	sum += num if num%2 == 0 
end

puts sum