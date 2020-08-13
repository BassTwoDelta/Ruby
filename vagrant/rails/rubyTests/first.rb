RSpec.describe "Buy a soda" do
    
    context  "has money" do 

        it "buy the soda" do
            buyer = Buyer.new 
            buyer.money = 10
            expect(buyer.buy_soda).to eq(true)
            #this statement's result will equal true
        end
    end
end