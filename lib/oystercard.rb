class Oystercard

  attr_reader :balance
  attr_accessor :in_journey

  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(amount)
    raise max_reached_message if max_reached(amount)
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

  def in_journey?
    @in_journey
  end

  def touch_in
    @in_journey = true
  end

  def touch_out
    @in_journey = false
  end

  private
  def max_reached_message
    "Unsuccessful. You have the maximum allowed amount on your card."
  end

  def max_reached(amount)
    (@balance + amount) > 90
  end

end
