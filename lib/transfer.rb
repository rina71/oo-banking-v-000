class Transfer
  attr_accessor :name, :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount )
    @sender = sender
    @receiver = receiver
    @status = pending
    @amount = amount
  end
end
