#1 
puts [1,2,3,4,5].select { |elem| elem.even? }

#2 
puts Array.new(3)

#3
puts Array.new(4, true)

#4
puts Array.new(4,2).reject { |elem| elem.even? }

#5
puts (1..5).to_a

#6
puts (1...5).to_a