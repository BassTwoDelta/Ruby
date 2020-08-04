#1 
# arr = [3,5,1,2,7,9,8,13,25,32]
# def number1 arr
#     sum = 0
#     for i in 0...arr.count
#         sum = sum + arr[i]
#     end
#     puts sum 
#     print arr.find_all { |i| i > 10}
# end

# number1(arr)


# #2
# arr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
# # puts arr.shuffle
# puts arr.find_all{|word| word.length > 5}

#3
# arr = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
# def shuffle arr
#     shuffled = arr.shuffle
#     puts shuffled.last
#     first = shuffled.first
#     if first == "a" || first == "e" || first == "i" || first == "o" || first == "u" 
#         puts "The first letter is a vowel"
#     end
# end
# shuffle(arr)

# #4
# Array.new(10){ rand(55..100) }

# #5
# newArr = Array.new(10){ rand(55..100) }
# puts newArr.sort
# puts newArr.min
# puts newArr.max

# #6 
# def generateRanString num
#     charset = Array("A"..."Z") + Array("a"..."z")
#     Array.new(num) { charset.sample }.join
# end 

# # puts generateRanString(5)

# #7
# newArr = []
# 10.times { newArr.push(generateRanString(5))}
# puts newArr
