def del_multiple(x,n)
  arr=[]
  count=0; 	i=0
  while arr.size!=x 
    arr.push(i) if(!(i%n==0))
    i+=1
    count.next
  end
  p arr
end
del_multiple(15,3)