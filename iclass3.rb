class A
private
 def m1
   puts "parent method1"
 end
def m3
 puts "parent method2"
end
public :m1,:m3
end
class B<A
 def m2
  puts "child class"
 end
end
a=A.new
a.m1
a.m3
b=B.new
b.m1
b.m2
