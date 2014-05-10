#!/usr/bin/ruby
# Family Tree - Genetic Pair swapping
# This program defines an even number of people, and has them pair off until there is one person.

# Get even number from user.
begin
	puts "Please enter a positive number between 2 and 10."
	people = gets.chomp.to_i
end while (people < 1 || people > 10) && (people % 2 != 0)
puts "You typed: #{people}."

# people tells program how many people to start with in the first generation.
# for testing purposes, we'll have each person be given a number which are added together in each new person.

class Person
	# attr_accessor is used so we can read/write :name, etc...
	attr_accessor :name, :gender, :number

	# Define biographical and genetic information
	def initialize (name, gender, number)
		@name = name
		@gender = gender
		@number = number
		# Number is a stand in for the more complicated genes.
	end

	# Sanity check to output said information
	def id
		puts "Hi! My name is #{name} and I am #{gender}. My number is #{number}."
	end

	# convert number to an integer
	def my_num
		number.to_i
		return my_num
	end

	# List how many objects exist
  	def self.all
    	ObjectSpace.each_object(self).to_a
  	end

  	def self.count
    	all.count
  	end

end

# Sanity check
man = Person.new("Thorpe", "Male", 1)
woman = Person.new("Jain", "Female", 1)
child = Person.new("Bick", "Male", man.number.to_i + woman.number.to_i)
puts "Child number is #{child.number}."
puts "***"

# Create Persons
x = 0
puts x
1.upto(people) do |i|
	if x % 2 == 0 
		i = Person.new("human_#{i}", "Male", 1)
		x += 1
	else
		i = Person.new("human_#{i}", "Female", 1)
		x += 1
	end
	puts i.id
end


