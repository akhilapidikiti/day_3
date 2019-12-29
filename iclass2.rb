class Student
@@count=0
attr_accessor :name, :id, :gender
def initialize(n=nil,i=nil,g=nil)
@name=n
@id=i
@gender=g
@@count+=1
end
def display
puts @name,@id,@gender,@@count
end
end
class CSE < Student
attr_accessor  :name, :id, :gender, :regno, :sec
def initialize(n=nil,i=nil,g=nil,r=nil,s=nil)
super(n,i,g)
@regno=r
@sec=s
end
def display
puts"the details of given student of cse are: "
puts super,@regno,@sec
end
end
class IT < Student
attr_accessor  :name, :id, :gender, :regno, :sec
def initialize(n=nil,i=nil,g=nil,r=nil,s=nil)
super(n,i,g)
@regno=r
@sec=s
end
def display
puts"the details of given student of it are: "
puts super,@regno,@sec
end
def count_of_it
puts "the count of  students is: "
puts @@count
end
end
for i in (1..5)
puts "enter dept"
d=gets.chomp.to_s
if d=="cse"
puts "enter name,id,gender,regno and sec"
n=gets.chomp.to_s
i=gets.chomp.to_i
g=gets.chomp
r=gets.chomp.to_i
s=gets.chomp
c=CSE.new(n,i,g,r,s)
c.display
#c.count_of_cse
elsif d=="it"
puts "enter name,id,gender,regno and sec"
n=gets.chomp.to_s
i=gets.chomp.to_i
g=gets.chomp
r=gets.chomp.to_i
s=gets.chomp
c=IT.new(n,i,g,r,s)
c.display
c.count_of_it
end
end

