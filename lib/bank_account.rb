class BankAccount

  attr_accessor :name, :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
    if !@name == name
      raise 'An error has occured'
    end
  end

  def deposit(amount)
    @balance += amount
    @balance
  end

  def display_balance
    return "Your balance is $#{@balance}."
  end

  def valid?
     self.status = "open" && self.balance > 0 && true
    #   return true
    # else
    #   return false
    # end
  end

  def close_account
    self.clear

  end
end
