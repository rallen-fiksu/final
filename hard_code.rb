#!/usr/bin/ruby
# Hard coded version

# Define person class
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
end

# Generation 1
generation1 = {:couple1 => [man_a1, woman_a1], :couple2 => [man_b1, woman_b1]}
man_a1 = Person.new("Thorpe", "Male", 1)
woman_a1 = Person.new("Jain", "Female", 1)
man_b1 = Person.new("Rolb", "Male", 1)
woman_b1 = Person.new("Fess", "Female", 1)

# Generation 2
generation2 = {:couple1 => [man_a2, woman_a2]
man_a2 = Person.new("Durn", "Male", man_a1.number.to_i + woman_a1.number.to_i)
woman_a2 = Person.new("Lok", "Female", man_b1.number.to_i + woman_b1.number.to_i)

# Generation 3
generation2 = {:individual => [man_a3]
man_a3 = Person.new("Wince", "Male", man_a2.number.to_i + woman_a2.number.to_i)

# Sanity check
puts man_a1.id
puts woman_a1.id
puts man_b1.id
puts woman_b1.id
puts man_a2.id
puts woman_a2.id
puts man_a3.id