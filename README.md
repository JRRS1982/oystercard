# OYSTERCARD CHALLENGE

THIS README IS NOT COMPLETE AND REQUIRED UPDATING. CURRENTLY WORKING ON CHAPTER 14.


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

In order to pay for my journey
As a customer
I need to have the minimum amount (£1) for a single journey.

In order to pay for my journey
As a customer
When my journey is complete, I need the correct amount deducted from my card

In order to pay for my journey
As a customer
I need to know where I've travelled from

In order to know where I have been
As a customer
I want to see all my previous trips

In order to know how far I have travelled
As a customer
I want to know what zone a station is in

Step 14: 
In order to be charged correctly
As a customer
I need a penalty charge deducted if I fail to touch in or out

### Which we can break down as follows:

Plan1:  User will check balance and balance will be returned.

Plan2:  User will top-up by a certain amount and the balance will change by that
        amount.

Plan3:  If the user tries to top-up to a balance higher than the limit an error
        will be raised.

Plan4:  If user pays for something then money is removed from their balance.

Plan5a: Tell us a user's commuting status.

Plan5b: Change user's commuting status when they touch in.

Plan5c: Change user's commuting status when they touch out.

Plan6:  If a user tries to start a journey with less than £1 then an error will
        be raised.


|CLASSES|METHODS|VARIABLES|CONSTANTS|
|---------|--------------|--------------|--------------|
|card|top_up, deduct, in_journey?, in_journey?, touch_in, touch_out|@balance, @in_journey|REQUIRED_BALANCE|


## Project title

This is the 'Oystercard' project, a problem set from Makers Academy which I worked on in partnership with Tome de Jesus, Paul Martin, Wardah Tarar, James Davies and Samantha Ixer from the March 2019 cohort. 

## Motivation

I am working on this project to build my skills as a developer.

### Learning objectives
> TDD
> Using the Extract Class Refactoring Pattern.
> Creating a class.
> Working with arrays.
> Working wiht hashes.
> Writing custom attribute accessors.
> Selectivly disabling RSpec.
> Working with RSpec.
> Using private methods for encapsulation.  
> Raising errors.
> Working with constants.
> Accessing a constant from outside the class.
> Working with instance variables.
> Working with booleans / predicate methods.
> Using RSpec boolen / predicate matchers.
> Using interpolation.
> Raising errors.

## Build status

The project is currently under construction, it may not be completed as this is a practice exercise to build myskills. Latest commit at the time of this readme was at stage 14 of the challenge (building a fare feature).

## Code style

Rubocop 0.65.0 was used for linting and stylying the Ruby code. 
 
## Screenshots

Although UML was carried out i did not take any photos of it. 

## Tech/framework used

Ruby was used as the main language, with RSpec used for testing. 

## Features

XXXXXXXXXXXXXXXXXX

## Installation

Ruby v 2.5.0 was used in the construction of the project, if gems were used, please find attached a gem file listing those gems for installation. 

## API Reference

No API used in this project. 

## Tests

A TDD process was used in the development of this project, please see the attached RSpec files for details of the testing that was carried out. 

## How to use?

You should be able to run the code via irb. 

## Contribute

No contributions are required at this time, as this is a training exercise. 

## Credits

Full credit given to Makers Academy who have suggested the project. 

#### Anything else that seems useful


Code written by Jeremyrrsmith