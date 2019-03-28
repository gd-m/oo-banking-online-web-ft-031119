class Transfer
  # your code here
  attr_accessor :sender,:receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if sender.valid? && receiver.valid?
      return true
    else false
    end
  end

  def execute_transaction
    if self.valid? && @status!= "complete"
  #    if @status!= "complete"
        sender.balance -= @amount
        receiver.deposit(@amount)
        @status = "complete"
  #    end
    else
      puts "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end
  end

end
