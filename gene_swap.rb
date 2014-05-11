#!/usr/bin/ruby
# Gene Swap model

# Class pulled from family.rb as it stood on 2014/05/10 at 15:31 EST.
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

# Super helpful link on Class Objects: http://patshaughnessy.net/2012/7/26/objects-classes-and-modules

# Sanity check
man = Person.new("Thorpe", "Male", 1)
woman = Person.new("Jain", "Female", 1)
# child = Person.new("Bick", "Male", man.number.to_i + woman.number.to_i)
# puts "Child number is #{child.number}."
puts "***"

generation1 = Array.new
couple1 = [man, woman]
generation1.push(couple1)

puts "Generation 1:"
generation1.each { |a| puts a }
puts "Couple Number 1:"
couple1.each { |a| puts a }
puts "---"
# Make Babies!
child = Person.new("Dimmy", "Male", man.number.to_i + woman.number.to_i)
puts child.id