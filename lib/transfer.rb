class Transfer
  attr_accessor :name, :sender, :receiver, :amount

  def initialize(sender, receiver, amount )
  
    @status = pending
  end
end
