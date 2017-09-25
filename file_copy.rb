
file = File.open("input.txt","r")
content=[]
file.each_line do |line|
  content<<line.chomp

end
puts content
puts "Sorting options 1:[A-Z] 2:[Z-A]"
choice=gets.chomp()
puts "Invalid input" unless ["1","2"].include?(choice) 
content.sort_by!(&:downcase)
content.reverse! if choice=="2"

File.open('text2.txt','a') do |f|
	content.each { |ch| f.puts(ch) } 
end
# File.open('text2.txt','a').write()


