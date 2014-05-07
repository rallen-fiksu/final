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

# Person as class
# Realize now I have issues with this class because I'm reading older docs.
class Person
	# attr_accessor is used so we can read/write :name, etc...
	attr_accessor :name, :gender, :number

	def initialize (name, gender, number)
		@name = name
		@gender = gender
		@number = number
		# Number is a stand in for the more complicated genes.
	end

	def id
		puts "Hi! My name is #{name} and I am #{gender}. My number is #{number}."
	end

	def my_num
		number.to_i
		return my_num
	end
end

# Sanity check
man = Person.new("Thorpe", "Male", 1)
woman = Person.new("Jain", "Female", 1)
child = Person.new("Bick", "Male", man.number.to_i + woman.number.to_i)
puts "Child number is #{child.number}."

# loop creates people and stores them in an array, sorted by males and females.
# THEN, a custom method pairs off males and females to make half as many people, m/f 50/50 until only 1.

# Make people based on user input
population = Array.new
i = 0
while i < people do
	$human{i} = Person.new("Human #{i}", "Male", 1)
	population << $human
	i += 1
end
puts human.each

# Okay lets try this. Use people to create a array with population[people]. Then, run each through person.
population = Array.new

1.upto(people) do |i|
  
end


=begin
TO DO
-Generate random people based on number inputted by user.
-Have said random people pair off to produce more people.
-Have gene's pair off instead of numbers
=end