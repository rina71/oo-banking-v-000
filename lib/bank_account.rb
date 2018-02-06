class BankAccount

  attr_accessor :name, :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def depost(amount)
    @balance + amount = @balance

  end

  def display_balance
    puts "Your balance is $#{avi.balance}."

  end
end
