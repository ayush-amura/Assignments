def dash(number="")
   return "" if(number==nil) #Handling nil case
   arr=number.split('')
   p arr
   arr.each_with_index do |item,index|#traversing and checking for connsecutive odd numbers
       if(arr[index-1].to_i%2==1 && arr[index].to_i%2==1)
       	arr[index]="-#{item}" #replacing "x" with "-x" 
       end
   end   
arr.join
end
p dash("112233445566")