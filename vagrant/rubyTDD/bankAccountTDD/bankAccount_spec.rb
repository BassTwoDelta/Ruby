require_relative 'bankAccount'
RSpec.describe BankAccount do
    before(:each) do
        @BA1 = BankAccount.new
    end

    it 'has a getter for checking acount balance' do
        @BA1.display_checking_balance
        expect(@BA1.display_checking_balance).to eq(0.0)
    end

    it 'has a getter for total account balance' do
        @BA1.display_total
        expect(@BA1.display_total).to eq(0.0)
    end

    it "has a method that allows the user to withdraw money" do
        @BA1.withdraw_from_checking(0)
        expect(@BA1.withdraw_from_checking(0)).to eq(0)
    end

    it "user can not see the total number of bank accounts" do
        expect{@BA1.total_accounts}.to raise_error(NoMethodError)
    end

    it "user can not set the interest rate" do
        expect{@BA1.interest_rate=0}.to raise_error(NoMethodError)
    end

end