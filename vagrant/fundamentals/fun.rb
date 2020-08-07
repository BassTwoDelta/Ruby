## everything is an object. 

puts "Hello Cohort!"
puts "Hello Again!"
p [9,3,2,1,'hello'] ## leaves it as a whole 
puts [9,3,2,1,'hello'] ## prints each array index on a new line 
p "Hello with P!" ## p leaves it in the form that it was
print "Hello with print!" ## does not create new lines, keeps it on the same line
puts " "

# ... is a range 

arr = [3,4,5]
for i in 0...arr.count
    puts arr[i]
end

5.times { puts'hello' } ## [num].times will do something num amount of times

puts false.class ## [something].class tells you what class something is (string, array, etc..)

puts "hello world".reverse.upcase ##reversed it and then uppercase it

puts "hello".capitalize ## will captialize the first letter 

puts 78.odd? ## the ? will return a true or false

puts 89.send(:+, 8) 
## same thing as 89 + 8 

puts "24 plus 8 is #{24 + 8}" ## DOUBLE QUOTES = Formatted string just like a f-string...
puts '24 plus 8 is #{24 + 8}' + 10.to_s ## SINGLE QUOTES = STRING STRING STRING!!! // to_s = to make it part of the string

fun = "lalalala"

## All objects are truethy... the onlything not truethy is false. False is falsey
if ""
    puts "I am positive"
end
if false
    puts "I am positive"
end

## nil and false are falseies! 
unless nil
    puts "I am negative"
end
unless false
    puts "I am negative"
end


val = 2
unless val > 9 
    puts 'less'
else
    puts 'more!'
end
### same as above! Just put what you want to do first. 
puts 'less' unless val > 100

## while loop = while do loop