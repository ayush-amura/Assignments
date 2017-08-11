# Write a method which will solve the following use case.
# input - Array. ex: [1, 8, 215, 258 1, 0, 10, 2, 12, 14, 16, 54, 32, 18, 129, 172]
# output - Occurrence of '1' in the array is '2' times. (Print this line for every possible number in the array.)



def Occurrence_count(arr)
	h1={}
	arr.each do |element|
		h1["#{element}"].nil? ? h1["#{element}"]=1 : h1["#{element}"]+=1
	end
	h1.each do |key,value|
		puts "	Occurrence of #{ key } in the array is #{value} times "
	end	
end
 Occurrence_count([1, 8, 215, 258, 1, 0, 10, 2, 12, 14, 16, 54, 32, 18, 129, 172])			 