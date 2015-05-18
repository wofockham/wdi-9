# Simple Dreadful Calculator
require 'pry'

def main_menu
  puts "[q] - quit"
end

def fetch_input(prompt)
  print prompt
  gets.chomp # Implicit return again.
end

def fetch_number(prompt)
  print prompt
  gets.to_f # Allow decimal input.
end


main_menu
user_choice = fetch_input "Please enter your selection: "

until user_choice == 'q'
  # Your code goes here...

  main_menu
  user_choice = fetch_input "Please enter your selection: "
end

puts "Thank you for using dreadful calculator"
