require parser
class Tag
  attr_accessor :children, :content, :tagdata , :name

  def initialize(name)
    @name = name 
    @children = []
    @content = nil
    @tagdata = {}
    p 'reached'
  end
end