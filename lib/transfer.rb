class Transfer
  attr_reader  :sender, :receiver, :amount
  attr_accessor :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid? == true

  end

  def execute_transaction
    # binding.pry
    if @sender.balance > @amount || @sender.balance = @amount
      @sender.balance -= @amount
      @receiver.balance += @amount
    self.status = "complete"
  elsif @sender.balance < @amount || @sender.valid? == false
    self.status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    @sender.balance += @amount
    @receiver.balance -= @amount
    self.status = "reversed"

  end
end
