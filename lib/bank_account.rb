class BankAccount

  attr_accessor :name, :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    @balance + amount = @balance

  end

  def display_balance
    return "Your balance is $#{@balance}."

  end
end
