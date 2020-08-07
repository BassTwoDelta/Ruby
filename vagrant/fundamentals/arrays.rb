a = ["Garrett", "Brittney", "Philip", "Todd", "Alex", "Cole"]
b = [1,4,5,7,9,34,54,13,67,8,9,0]
c = ["Todd", 9]

#using .at / fetch
puts a.at(3)
puts a.fetch(4)

#using delete 
a.delete("Todd")
puts a

#using revers 
puts a.reverse

#using length
puts a.length

#using sort
puts a.sort

#using slice 
puts a.slice!(3)

#using shuffle 
puts a.shuffle

#using join
puts a.join("*****")

puts a.insert(4, "Scoober")

puts a.values_at(0,1).join(" and ")