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

# people tells program how many people to start with in the first generation.
# for testing purposes, we'll have each person be given a number which are added together in each new person.

class Person
	def initialize(name, gender, number)
		@name = name
		@gender = gender
		@number = number
	end

	def id
		puts "Hi! My name is #{name} and I am #{gender}. My number is #{number}"
	end
end

p = Person.new('Thorpe', 'Male', '1')
puts "#{p}"