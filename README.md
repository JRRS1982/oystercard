The error we encountered in step 03 was:
  NameError:
  uninitialized constant Oystercard
# ./spec/oystercard_spec.rb:1:in `<top (required)>'

This tells that type of error was NameError: unitialized constant, that happened in our spec file for oystercard on line 1.

It means that we haven't the object we're referencing.

One way we could solve this is to create the a file in lib called oystercard with the class Oystercard.

### Our user stories are:

In order to use public transport
As a customer
I want money on my card

In order to keep using public transport
As a customer
I want to add money to my card

In order to protect my money from theft or loss
As a customer
I want a maximum limit (of £90) on my card

In order to pay for my journey
As a customer
I need my fare deducted from my card

In order to get through the barriers.
As a customer
I need to touch in and out.

Which we can break down as follows:
|OBJECT   |MESSAGE                  |
|---------|-------------------------|
|card     |balance, top_up,         |
|         |deduct, touch_in,        |
|         |touch_out                |
|         |                         |
|---------|-------------------------|

Plan1:  User will check balance and balance will be returned.
Plan2:  User will top-up by a certain amount and the balance will change by that amount.
Plan3:  If the user tries to top-up to a balance higher than the limit an error will be raised.
Plan4:  If user pays for something then money is removed from their balance.
Plan5a: Tell us a user's commuting status.
Plan5b: Change user's commuting status when they touch in.
Plan5c: Change user's commuting status when they touch out.
