require 'pry'
$prompt = '> '
class Parser
def introduction
	binding.pry
	
	puts"====================================="
	puts "-----------HTML - PARSER------------"
	puts"====================================="
	puts " "
	menu
end

def menu
file_read 
	puts "1.HTML Tree"
	puts "2.HTML Tags"
	puts "3.HTML Source file"
	print "Enter Your choice #{$prompt}"
	choice=gets.chomp
	case choice
		when "1"
  		tree_html
  	when "2"
  		tag_html
  	when "3"
  		file_html
  	else
    	puts "Choose appropriate"
    end
	end
end
		
def file_read
	file = File.open("input.html","r")
	@content=[]
	@html_file=[]
	file.each_line do |line|
	  @html_file << line.chomp
	  @content=@html_file.to_s
	end
end

def file_html
	print "Html File ::\n"
	puts @html_file 
	puts "" 
end

def tree_html
	parsed=[]
	key = /(<((?:"[^"]*"['"]*|'[^']*'['"]*|[^'">])+)>)/
	puts "Html Tree ::"
	tree = @content.scan(key)
	# .each do |node|
	# tree_tag = node[1].split()
	p tree
	p tree.class
	# puts "----------------------------------------------"
	# end
	tree.each do |i|
		tree.each do |j|
			 i_str=i.to_s
			 puts i_str
			 if ( j =='/'+i_str)
			 	p 'sad'

			 # p'-----------------'
			 # p j
		end
		end		
		end

end
	# menu

def tag_html
	key_start_tag= /(<([a-z]+\s{0,1})>)/
	key_end_tag = /(<\/(.*?)>)/
	puts 'start tags'
	@content.scan(key_start_tag).each do |a| 
	p a
	end
	puts 'end tags' 
	@content.scan(key_end_tag).each do |a| 
	p a
	end  
	# puts "Tags in HTML file are ::"
	puts "----------------------------------------------"
	# menu
end

p = Parser.new
p.introduction
