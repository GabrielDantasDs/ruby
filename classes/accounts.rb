class Accounts
    attr_reader :balance #accessor method 'balance'

    protected :balance #and make it protected

    def greaterBalanceThen(other)
        return @balance > other.balance
    end
    
    private

    def debit(account, amount)
        account.balance -= amount
    end
    def credit(account, amount)
        account.balance += amount
    end

    public

    def transferToSavings(amount)
        debit(@checking, amount)
        credit(@checking, amount)
    end