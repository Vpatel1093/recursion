def fibs (n)
	if n == 0
		return [0]
	elsif n == 1
		return [0,1]
	elsif n > 1
		numbers = [0,1]
		(2..n).each {|num| numbers << numbers[num-1] + numbers[num-2]}
		return numbers
	end
end

def fibs_rec (n)
	return [0] if n == 0
	return [0,1] if n == 1
	numbers = fibs_rec(n-1)
	numbers << numbers[n-1] + numbers[n-2]
end
