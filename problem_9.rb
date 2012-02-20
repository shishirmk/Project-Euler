squares = Hash.new
max = 500
(1..max).each do |i|
	squares[i**2] = i
end

test = 0
(1..max).each do |i|
	(1..max).each do |j|
		k_sq = i**2 + j**2
		if  !squares[k_sq].nil? and (i+j+squares[k_sq]) == 1000
			puts (i*j*squares[k_sq])
			test = 1
			break
		end
	end
	break if test == 1
end