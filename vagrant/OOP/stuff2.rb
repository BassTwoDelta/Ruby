class Mammal
    def initialize name
        @name = name
        puts "mammal pride!"
    end
    def talk
        puts "eeek"
    end 
end 

class Elephant < Mammal

    def initialize 
        puts "elephant power"
        super 'george'
    end
    def speak
        puts 'toooooot'
        talk # if you call a meathod an implied "self" is automatic
    end
    def talk
        puts "not eeking"
        super #super will calls whatever function it is the same function on the parent.
    end
end

george = Elephant.new
george.speak

