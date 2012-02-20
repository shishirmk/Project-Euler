#Problem at http://projecteuler.net/problem=5

# Numbers to verify divisibility of. 

imp_nums = [20,19,18,17,16,15,14,13,12,11]
#imp_nums = [9,8,7,6,5]

i = 1
done = false
while done == false
	test = false
	for j in imp_nums
		if i%j == 0
			test = true
			next
		else
			test = false
			break
		end
	end
	if test == true
		puts i
		break
	end
	i = i + 1
end