require_relative "human"

class Samurai < Human
    @@total_samurai = 0
    def initialize
        super 
        @health = 200
        @@total_samurai += 1
    end

    def death_blow object 
        if object.class.ancestors { |i| i == Human || Wizard || Samurai || Ninja }
        object.take_damage(200)
        end
    end

    def meditate 
        @health = 200
    end

    def how_many
        puts @@total_samurai
    end
end

samurai1 = Samurai.new
samurai2 = Samurai.new 

samurai1.death_blow(samurai2)
puts samurai2.inspect

samurai2.how_many
samurai2.meditate
puts samurai2.inspect