#1
=begin
array=[3,5,1,2,7,9,8,13,25,32]
array.reduce(0, :+)
array.delete_if{|a| a < 10}
print array
=end

#2
=begin
array = ["John", "KB", "Oliver", "Cory", "matthew", "christopher"]
#print array.shuffle
array.delete_if{|a| a.length<5}
print array
=end

#3
=begin
array = []
("a".."z").each{|i|array.push(i)}
x = array.shuffle
print x
puts  x.last
=end
#4
=begin
x = []
10.times{|i| x.push(i=rand(55..100))}
print x
=end

#5
=begin
x = []
10.times{|i| x.push(i=rand(55..100))}
puts x.sort
puts x.min
puts x.max
=end

#6
=begin
x=[]
5.times{|i| x.push((65+rand(26)).chr)}
puts x.join
=end

#7
=begin
x = []
10.times{|i| x.push((1..5).collect {|i| i = (65+rand(26)).chr}.join)}
puts x
=end