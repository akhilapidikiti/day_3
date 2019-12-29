class Book
 attr_accessor :title, :author
 def initialize(t=nil,a=nil)
 @title=t
 @author=a
 end
 def display
 puts @title,@author
 end
def to_s
"Book name is #{@title} and the author name is #{@author}"
end
end
b1=Book.new("book1","author1")
b2=Book.new("book2","author2")
b3=Book.new("book3")
b4=Book.new
b1.display
b2.display
b3.display
b4.display
puts b4.methods
puts b2
