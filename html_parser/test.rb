str = '<html>
	<head>
		<title>Page Title</title>
	</head>
	<body>
		<h>My First Heading</h>
		<p>My first paragraph.</p>
	</body>
</html>'

while (m = /\A<.+?>/.match(str)) && str.end_with?('</' + m[0][1..-1])
  str = str[m[0].size..-(m[0].size + 2)]
  puts m
end

#   # def parse_tree
# 					if tag.first.start_with?('/')
#             current = current.parent
#           else
#             node = Node.new(tag.first)
#           if @root.nil?
#               @root = node
#           else
#               node.parent = current
#               current.childs << node
#          end
          


#   #   File.open(html_file, 'r') do |file|
#   #     current = nil
#   #     file.each_line do |line|
#   #       line.scan(/<(.*?)>/).each do |tag|
#   #         if tag.first.start_with?('/')
#   #           current = current.parent
#   #         else
#   #           node = Node.new(tag.first)
#   #           if @root.nil?
#   #             @root = node
#   #           else
#   #             node.parent = current
#   #             current.childs << node
#   #           end
#   #           @tags << node.tag
#   #           current = node
#   #         end
#   #       end
#   #     end
#   #   end
#   # end


# #         phrase = 'The quick brown fox jumps over the lazy dog.'
# #         # Define regex.
# #         regex = /fox/
# #         # Check for match result.
# #         result = regex.match(phrase)
# #         # Output result.
# #         puts result #=> fox
# #         # Show the class.
# #         puts result.class #=> MatchData
# #         # Get the regexp.
# #         puts result.regexp #=> (?-mix:fox)
    

# # # string = "My phone number is (123) 555-1234-23123."  
# # # phone_re = /\((\d{3})\)\s+(\d{3})-(\d{4})/  
# # # m = phone_re.match(string)  
# # # unless m  
# # #   puts "There was no match..."  
# # #   exit  
# # # end  
# # # print "The whole string we started with: "  
# # # puts m.string  
# # # print "The entire part of the string that matched: "  
# # # puts m[0]  
# # # puts "The three captures: "  
# # # 3.times do |index|  
# # #   puts "Capture ##{index + 1}: #{m.captures[index]}"  
# # # end  
# # # puts "Here's another way to get at the first capture:"  
# # # print "Capture #1: "  
# # # puts m[1] 


# # # all tags::
# # # a='<(?:"[^"]*"['"]*|'[^']*'['"]*|[^'">])+>'