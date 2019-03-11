class Oystercard

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(amount)
    raise max_reached_message if max_reached(amount)
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

  private
  def max_reached_message
    "Unsuccessful. You have the maximum allowed amount on your card."
  end

  def max_reached(amount)
    (@balance + amount) > 90
  end

end
