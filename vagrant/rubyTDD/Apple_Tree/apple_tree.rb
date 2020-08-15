class Apple_Tree
    attr_accessor :age
    def initialize age
        @age = age 
        if age < 3
            @height = 10
            @apple_count = 0
        elsif age > 3 && age < 7
            @height = 20
            @apple_count = 10
        elsif age > 10 
            @height = 30 
            @apple_count = 0 
        end
    end

    def apple_count
        @apple_count
    end
    
    def height
        @height
    end

    def year_gone_by
        @age += 1
        @height += @height * 0.1
        if age > 3 && age < 7
            @apple_count += 2
        else 
            @apple_count = 0
        end
    end

    def pick_apples
        @apple_count = 0 
    end
        
end

tree = Apple_Tree.new(2)