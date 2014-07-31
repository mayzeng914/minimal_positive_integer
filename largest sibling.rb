def solution(n)

    #split the number into array
	nArray = n.to_s.split(//)

    #convert the array from string to number
    nNewArray = nArray.map { |i| i.to_i }

    #sort the array of numbers from largest to smallest
    nNewArray.sort!
    nNewArray.reverse!

    #join the array together
    nNewArray = nNewArray.map { |i| i.to_s }
    nLargestNumber = nNewArray.join
    nLargestNumber = nLargestNumber.to_i


    #compare the largst number with 100,000,000
	if nLargestNumber > 100000000
    	puts -1
    else
        puts "The largest number is #{nLargestNumber}!"
    end
end

n = 1029384756
solution(n)