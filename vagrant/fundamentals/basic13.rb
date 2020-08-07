#print 1-255

# for i in 1..255
#     puts i
# end



#print odd numbers between 1-255

# for i in 1..255
#     if i % 2 !=0
#         puts i
#     end
# end



#Print Sum 
# sum = 0
# for i in 0..255
#     print "New Number: #{i} "
#     sum += i
#     puts "Sum: #{sum}"
# end



#Iterating through an array 

# array = [1,3,5,7,9,13]
# array.each { |elem| puts elem}



#Find Max
# a = [1,4,5,6,7,2,45,23,34,-43,-522,5786,200,42,2,-49]

# puts a.max


#Get Average 
# a = [2,10,3]
# class Array
#     def average
#         inject(&:+) / size
#     end
# end
# puts a.average



#Array with Odd Numbers 
# array = [];
# for i in 1..255 
#     if i % 2 != 0
#         array.push(i)
#     end
# end
# puts array



#Greater than y 
# array = [1,4,32,54,2,5]
# y = 2 
# total = 0
# for i in 0...array.count
#     if array[i] > y
#         total = total + 1
#     end
# end
# puts total



# #square the values 
# x = [1,5,10,-2]
# for i in 0...x.count
#     x[i] = x[i] * x[i]
# end
# puts x



## Eliminate the negative numbers 
# x = [1,5,10,-2]
# for i in 0...x.count
#     if x[i] < 0
#         x[i] = 0 
#     end
# end 
# puts x


# Max Min Avg
# def maxMinAvg arr
#     sum =0 
#     avg =0
#     for i in 0...arr.count
#         sum = sum + arr[i]
#         avg = sum / arr.length
#     end
#     puts hash = {min: arr.min, max: arr.max, avg: avg}
# end

# maxMinAvg([1,2,3,4,5])



#Shifting the Values in the Array 
# def shift arr
#     for i in 0...arr.count 
#         arr[i] = arr[i+1]
#     end
#     arr[arr.length - 1] = 0
#     puts arr
# end

# shift([1,5,10,7,-2])


# #numberToString 
# def numToString arr
#     for i in 0...arr.count
#         if arr[i] < 0
#             arr[i] = "Dojo"
#         end
#     end
#     puts arr
# end

# numToString([-1,-3,2])











