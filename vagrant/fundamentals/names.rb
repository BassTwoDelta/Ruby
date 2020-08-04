a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]

puts "You have #{names.length} names in the 'names' array"
puts "The name is '#{a[:first_name]} #{a[:last_name]}'"
puts "The name is '#{b[:first_name]} #{b[:last_name]}'"
puts "The name is '#{c[:first_name]} #{c[:last_name]}'"
puts "The name is '#{d[:first_name]} #{d[:last_name]}'"
puts "The name is '#{e[:first_name]} #{e[:last_name]}'"