class Transfer
  attr_accessor :status, :amount, :sender, :receiver

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end

  def execute_transaction
    if @status == "pending"
      if self.valid? == false
      "Transaction rejected. Please check your account balance."
      end
      @sender.balance -= amount
      @receiver.deposit(amount)
      
      
      
      
    end
    
      @status = "complete"
    
  end
end
