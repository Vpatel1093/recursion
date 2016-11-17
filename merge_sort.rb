def merge_sort(arr)
	if arr.size > 1
		left,right = merge_sort(arr[0..arr.size/2-1]),merge_sort(arr[arr.size/2..-1])
		return merge(left,right)
	end
	arr
end

def merge(l,r,output=[])
	while l.size > 0 && r.size > 0
		output << (l[0]<r[0] ? l.shift : r.shift)
	end
	output += l.size == 0 ? r : l
	output
end
