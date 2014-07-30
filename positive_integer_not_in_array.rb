


def solution(arr)

	#sorting the array
	arr_sorted = arr.sort!

	#only need positive group
	arr_sorted.keep_if { |x| x > 0 }

# 	#comparing arr_sorted[i] and arr_sorted[i+1]
	arr_sorted.each_index do |i|

		if arr_sorted[i+1] != nil

		    if (arr_sorted[i+1] - arr_sorted[i]) > 1 
		    
			    minInt = arr_sorted[i] + 1
			    puts minInt
			    puts "The minimal positive integer is #{minInt}!"
			    break
		    end
		
		else
			minInt = arr_sorted[i] + 1
			    puts minInt
			    puts "The minimal positive integer is #{minInt}!" 
		end
	end
end

arr = (1..100000).to_a.shuffle
start = Time.new
arr.delete 70
solution(arr)
puts Time.new - start
