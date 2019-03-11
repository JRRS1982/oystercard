require './lib/Oystercard.rb'
# # Step04
# card = Oystercard.new
# card.balance # returns value

# Step05
card = Oystercard.new
balance1 = card.balance
card.top_up(100)
balance2 = card.balance
balance2 - balance1 == 100
