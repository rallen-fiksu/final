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

# loop creates people and stores them in an array.
# THEN, a custom method pairs off males and females to make half as many people, m/f 50/50 until only 1.

# Okay lets try this. Use people to create a array with population[people].
population = Array.new

# Fill array with Persons
1.upto(people) do |i|
	population << Person.new("human_#{i}", "Male", 1)
end

# Sanity Check. Delete this out later.
population.each do |population|
	puts population
end
print "Number of Humans: "
puts ObjectSpace.each_object(Person).count

puts human_1

=begin
TO DO
-Generate random people based on number inputted by user.
-Have said random people pair off to produce more people.
-Have gene's pair off instead of numbers
=end