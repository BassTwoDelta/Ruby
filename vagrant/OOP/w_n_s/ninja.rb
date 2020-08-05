require_relative "human"

class Ninja < Human
    def initialize 
        super
        @strength = 175
    end

    def take_damage amount 
        super
    end

    def steal object
        if object.class.ancestors { |i| i == Human || Wizard || Samurai || Ninja }
        object.take_damage(10)
        @health += 10
        end
    end

    def get_away 
        @health -= 15
    end
end


ninja1 = Ninja.new 
ninja2 = Ninja.new
ninja2.steal(ninja1)
puts ninja1.inspect
puts ninja2.inspect