class Human 
    attr_accessor :strength, :intelligence, :health, :stealth
    def initialize 
        @strength = 3 
        @intelligence = 3
        @stealth = 3 
        @health = 100
    end

    def take_damage amount 
        if amount > @health
            @health == 0
        else 
        @health -= amount
        end
    end

    def attack object
        if object.class.ancestors { |i| i == Human || Wizard || Samurai || Ninja }
            object.take_damage(5)
        else 
            puts "not human"
        end
    end
end 

human1 = Human.new
human2 = Human.new

human1.attack(human2)
puts human2.inspect

# p human1.class.ancestors[0].class