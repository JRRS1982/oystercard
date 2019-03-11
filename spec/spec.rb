require './lib/Oystercard.rb'
# # Step04
# card = Oystercard.new
# card.balance # returns value

# # Step05
# card = Oystercard.new
# balance1 = card.balance
# card.top_up(100)
# balance2 = card.balance
# balance2 - balance1 == 100

# # Step06
# card = Oystercard.new
# card.top_up(90)
# p card.top_up(1) ==  "Unsuccessful. You have the maximum allowed amount on your card."

# Step07
card = Oystercard.new
card.top_up(90)
card.deduct(10)
p card.balance == 80
