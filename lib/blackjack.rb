require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  #binding.pry
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = 0 
  2.times do 
    sum += deal_card
  end
  display_card_total(sum)
  sum
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

def hit?(card_total)
  # code hit? here
  prompt_user
  result = get_user_input
  total = card_total
  
  if result == "h"
    total += deal_card 
    #binding.pry
  elsif result != 's'
    invalid_command
    prompt_user
  end
 total
end

"""The instruction says if something other than 'h' or 's', that is any number other than 'h' or's'; however, the tests expect invalid_command to be passed when 's' is entered by the user.
I didn't read the tests before coding (was going off the error descriptions) and that gave me a terribly hard time trying to get the tests to pass with the instructions.
Remember that 's' is not an invalud commmand"""

#hit?(7)
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome 
  current_card = initial_round
  while current_card <= 21 do
    current_card = hit?(current_card)
    display_card_total(current_card)
  end 
  end_game(current_card)
 
end
    
