require 'set'

all_numbers = Set.new
(2..2000000).each do |i|
	all_numbers << i
end

puts "Done populating numbers in set"

def set_sum(all_numbers)
	sum = 0
	for num in all_numbers
		sum += num
	end
	puts sum
end

(2..2000000).each do |i|
	for num in all_numbers
		if i > num/2
			next
		elsif num%i == 0
			all_numbers.delete(num)
			#puts "deleted #" + num.to_s
			next
		end
	end
	set_sum(all_numbers)
end

