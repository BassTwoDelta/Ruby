# local_var = 0
# @instance_var = 9 
# @@class_var = 9 

class User
    #instance variable aka attribute
    @name
    #getting method
    def name 
        @name
    end
    #setter method 
    def name=(val)
        @name = val
    end
end 

user1 = User.new #new is a function of all classes... all classes have this function... it returns self. ( a new instance object of this class)
user1.name ="Bob"

class Bike 
    @@bikes_sold =0
    attr_accessor :color, :brand

    def initialize color, brand
        @color = color
        @brand = brand
        @@bikes_sold += 1
    end

    def pumpTires
        puts "pump! pump! pump! pump!"
        self
    end

    def numSold
        @@bikes_sold
    end
end 
bike1 = Bike.new 'Blue', 'Trec'
puts bike1.numSold
bike2 = Bike.new 'Red', 'Trec'
puts bike2.numSold
puts bike1.inspect
puts bike1.pumpTires.pumpTires.inspect
