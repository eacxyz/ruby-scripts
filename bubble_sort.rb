def bubble_sort(array)
	not_sorted = true
	while not_sorted == true
		not_sorted = false
		array.each_with_index do |value, index|
			if index + 1 < array.length && value > array[index+1]
				array[index] = array[index+1]
				array[index+1] = value
				not_sorted = true
			end
		end
	end
	array
end

p bubble_sort([4,3,78,2,0,2])
p bubble_sort([3,2,9,6,5])