require_relative "apple_tree"
RSpec.describe Apple_Tree do
    context "Under age 3" do
        before(:each) do
            @tree1 = Apple_Tree.new(1)
        end

        it "can not grow apples, can grow one year, can grow in height" do
            @tree1.year_gone_by
            expect(@tree1.apple_count).to eq(0)
            expect(@tree1.age).to eq(2)
            expect(@tree1.height).to eq(11)
        end
    end

    context "Between age 3 and 7" do
        before(:each) do
            @tree2 = Apple_Tree.new(5)
        end

        it "can grow 2 apples, can grow one year and grow 10% height" do
            @tree2.year_gone_by
            expect(@tree2.apple_count).to eq(12)
            expect(@tree2.age).to eq(6)
            expect(@tree2.height).to eq(22)
        end
    end

    context "Over age 10" do 
        before(:each) do
            @tree3 = Apple_Tree.new(11)
        end

        it "can not grow apples, it can grow 10% in height and grow 1 year in age" do
            @tree3.year_gone_by
            expect(@tree3.apple_count).to eq(0)
            expect(@tree3.age).to eq(12)
            expect(@tree3.height).to eq(33)
        end
    end

    it "has a pick apples meathod" do
        @tree4 = Apple_Tree.new(5)
        @tree4.pick_apples
        expect(@tree4.apple_count).to eq(0)
    end


    it "has a getter and setter for age attribute" do
        tree1 = Apple_Tree.new(1)
        tree1.age = 1 
        expect(tree1.age).to eq(1)
    end

    it "user can not set height of the tree" do 
        tree5 = Apple_Tree.new(5)
        expect{tree5.height = 10}.to raise_error(NoMethodError)
    end

    it "user can not set apple_count of the tree" do 
        tree6 = Apple_Tree.new(4)
        expect{tree6.apple_count = 4}.to raise_error(NoMethodError)
    end
end