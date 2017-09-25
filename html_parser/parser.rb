file = File.open("input.html","r")
content=[]
a=[]
file.each_line do |line|
  a << line.chomp
  content=a.to_s
end
	
print "Html File ::\n"
puts a 
puts "" 
	key = /(<(?:"[^"]*"['"]*|'[^']*'['"]*|[^'">])+>)/
	
	m = content.scan(key) 
	puts "All tags in Html File are ::"
	puts m

puts if(m[0]==m.last)

