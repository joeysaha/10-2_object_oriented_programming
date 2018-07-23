class BankAccount

  def balance
    @balance
  end

  def balance=(x)
    @balance = x
  end

  def interest_rate
    @interest_rate
  end

  def interest_rate=(y)
    @interest_rate = y
  end

  def deposit(z)
    @balance += z
  end

  def withdraw(w)
    @balance -= w
  end

  def gain_interest
    @balance *= (1+@interest_rate)
  end

end

#testing
account = BankAccount.new
account.balance = 20000
account.interest_rate = 0.05
puts account.balance
puts account.interest_rate
account.deposit(5000)
puts account.balance
account.withdraw(1875)
puts account.balance
account.gain_interest
puts account.balance
