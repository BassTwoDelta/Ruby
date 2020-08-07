require_relative "human"

class Wizard < Human
    def initialize
        super
        @health = 50 
        @intelligence = 25
    end

    def take_damage amount
        super
    end 

    def heal
        @health += 10
        puts "Wizards health incresed by 10"
        self
    end

    def fireball object 
        if object.class.ancestors { |i| i == Human || Wizard || Samurai || Ninja }
            object.take_damage(20)
            puts "attacked!"
        end
    end
end 

wizard1 = Wizard.new
wizard2 = Wizard.new
puts wizard1.fireball(wizard2)
puts wizard2.class.ancestors
puts wizard2.inspect

