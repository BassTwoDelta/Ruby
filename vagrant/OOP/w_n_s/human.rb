class Human 
    attr_accessor :strength, :intelligence, :health, :stealth
    def initialize 
        @strength = 3 
        @intelligence = 3
        @stealth = 3 
        @health = 100
    end

    def take_damage amount 
        @health -= amount
    end

    def attack thing 
        if thing.class.ancestors.include?(Human)
            puts "Attacked the human!"
            thing.take_damage(5)
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