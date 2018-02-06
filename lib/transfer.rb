class Transfer
  attr_accessor :name, :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    BankAccount.valid? == true

  end

  def execute_transaction
    # binding.pry
    if @sender.balance > @amount || @sender.balance = @amount
      @sender.balance - @amount
      @receiver.balance + @amount
    self.status = "complete"
  elsif @sender.balance < @amount
    self.status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end
end
