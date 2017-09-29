require 'tag'
require 'pry'
$prompt = '>'

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
	tags =[]
	parsed=[]
	key = /(<[a-z0-9]+\s{0,1})|(<\/[a-z0-9]+\s{0,1})/
	puts "Html Tree ::"
	tree = @content.scan(key)
	tree = tree.flatten.compact.map{|t| t[0]=''; t.strip }
	count = 0
	tree.flatten.each do |node|
		tag = Tag.new(node)
		tag.children = get_children(tag,tree.flatten,count) unless node.start_with?('/')
		tags << tag 
		count+=1
	end
	tags.each do |tag|
		unless tag.name.start_with?('/')
			puts tag.name
			p tag.children
		end
	end
end

def get_children(tag, arr, count)
	flag = true
	temp = arr[count]
	t= ''
	children = []
		
	arr[count+1..-1].each do |node|
		break unless node.match(/\/#{temp}/).nil?
		if flag
			children.push(node)
			t= node
			flag = false
		end
		flag = true unless node.match(/\/#{t}/).nil?	
	end
	children
end

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

