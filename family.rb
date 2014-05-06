#!/usr/bin/ruby
# Family Tree - Genetic Pair swapping
# This script defines an even number of people, and has them pair off until there is one person.

# Get even number from user.

# puts "Please enter a positive number between 2 and 10."
# people = gets.chomp.to_i
begin
	puts "Please enter a positive number between 2 and 10."
	people = gets.chomp.to_i
end while (people < 1 || people > 10) && (people % 2 != 0)
puts "You typed: #{people}."