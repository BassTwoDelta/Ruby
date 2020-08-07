class BankAccount
    @@total_accounts = 0
    def initialize
        @checking_balance = 0.00
        @savings_balance = 0.00
        @account_number = account_number
        @interest_rate = 0.01
        @@total_accounts += 1
    end

    def account_information 
        display_account_number
        display_total
        display_checking_balance
        display_savings_balance
        puts "Your interest rate is #{@interest_rate}"
        self
    end

    def display_account_number
        puts "Account number is #{@account_number}"
        self
    end

    def display_total
        @total = @checking_balance + @savings_balance
        puts "The total in all of your accounts $#{@total}"
        self
    end

    def display_checking_balance
        puts "Checking Account Balance is $#{@checking_balance}"
        self
    end

    def display_savings_balance 
        puts "Savings Accoung Balance is $#{@savings_balance}"
        self
    end

    def deposit_into_checking amount
        @checking_balance += amount
        puts "Deposited $#{amount} into checking account."
        self
    end

    def deposit_into_savings amount 
        @savings_balance += amount 
        puts "Deposited $#{amount} into savings account."
        self
    end

    def withdraw_from_checking amount 
        if amount > @checking_balance
            puts "You do not have enough funds to withdraw"
            self
        else
            @checking_balance -= amount 
            puts "You have withdrawn $#{amount} from your checking account" 
            self
        end
    end

    private
    def account_number
        @account_number = rand(0000000001...9999999999)
    end

end

my_account = BankAccount.new
my_account.deposit_into_checking(50).deposit_into_savings(100.50).withdraw_from_checking(25)

my_account.account_information