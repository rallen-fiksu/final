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

def mbaby (arg1 = "#{man1}", arg2 = "#{woman1}")
	"#{arg1}, #{arg2}"
end

# Super helpful link on Class Objects: http://patshaughnessy.net/2012/7/26/objects-classes-and-modules

# Sanity check
man1 = Person.new("Thorpe", "Male", 1)
woman1 = Person.new("Jain", "Female", 1)
man2 = Person.new("Rolb", "Male", 1)
woman2 = Person.new("Fess", "Female", 1)
# child = Person.new("Bick", "Male", man.number.to_i + woman.number.to_i)
# puts "Child number is #{child.number}."
puts "***"

generation1 = Hash.new
generation1 = {:couple1 => [man1, woman1], :couple2 => [man2, woman2]}

puts "Generation 1:"
generation1.each { |a| puts a }
puts "---"

# Make Babies
puts mbaby



# child = Person.new("Dimmy", "Male", man1.number.to_i + woman1.number.to_i)
# puts child.id