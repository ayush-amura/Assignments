$prompt = '> '
class Parser
def introduction
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
	key = /(<(?:"[^"]*"['"]*|'[^']*'['"]*|[^'">])+>)/
	tree = @content.scan(key) 
	puts "Html Tree ::"
	puts tree
	puts "----------------------------------------------"
	menu
end

def tag_html
	key_tag= /(<[a-z]+\s{0,1}>)/
	tags = @content.scan(key_tag) 
	puts "Tags in HTML file are ::"
	puts tags
	puts "----------------------------------------------"
	menu
end
end

p = Parser.new
p.introduction