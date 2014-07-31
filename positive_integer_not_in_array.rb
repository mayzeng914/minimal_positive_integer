


def solution(arr)

	#sorting the array
	arr_sorted = arr.sort!

	#only need positive group
	arr_sorted.keep_if { |x| x > 0 }

# 	#comparing arr_sorted[i] and arr_sorted[i+1]
	arr_sorted.each_index do |i|
        
        #the array starts with 1
		if arr_sorted[0] == 1

			if arr_sorted[i+1] != nil

			    if (arr_sorted[i+1] - arr_sorted[i]) > 1 
			    
				    minInt = arr_sorted[i] + 1
				    puts minInt
				    puts "The minimal positive integer is #{minInt}!"
				    break
			    end
			
			#when the array reach to the very last index
			else
				
				minInt = arr_sorted[i] + 1
				    puts minInt
				    puts "The minimal positive integer is #{minInt}!"
				    break 
			end

		else 

			#when the array doesn't start with 1		
			minInt = 1
				    puts minInt
				    puts "The minimal positive integer is #{minInt}!"
				    break
		end
	end
end

arr = (-100000..100000).to_a.shuffle
start = Time.new
arr.delete 724
solution(arr)
puts Time.new - start
