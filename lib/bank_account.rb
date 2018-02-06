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

end
