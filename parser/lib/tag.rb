class Tag
	attr_accessor :content, :name , :children, :tagdata

	def initialize(name=nil)
		@name = name
		content = nil
		children = []
		tagdata = {}
	end
end	