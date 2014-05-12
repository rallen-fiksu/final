#!/usr/bin/ruby
# Hard coded version

# Define person class
class Person
	# attr_accessor is used so we can read/write :name, etc...
	attr_accessor :name, :gender, :gene

	# Define biographical and genetic information
	def initialize (name, gender, gene)
		@name = name
		@gender = gender
		@pair = gene
		# Number is a stand in for the more complicated genes.
	end

	# Sanity check to output said information
	def id
		puts "Hi! My name is #{name} and I am #{gender}. My gene_pair is #{gene}."
	end
end


# Generation 1
man_a1 = Person.new("Thorpe", "Male", 1)
woman_a1 = Person.new("Jain", "Female", 1)
man_b1 = Person.new("Rolb", "Male", 1)
woman_b1 = Person.new("Fess", "Female", 1)
# Generation hash comes after objects are defined.
generation1 = {:couple1 => [man_a1, woman_a1], :couple2 => [man_b1, woman_b1]}

# Generation 2
man_a2 = Person.new("Durn", "Male", man_a1.gene.to_i + woman_a1.gene.to_i)
woman_a2 = Person.new("Lok", "Female", man_b1.gene.to_i + woman_b1.gene.to_i)
generation2 = {:couple1 => [man_a2, woman_a2]}

# Generation 3
man_a3 = Person.new("Wince", "Male", man_a2.gene.to_i + woman_a2.gene.to_i)
generation2 = {:individual => [man_a3]}

# Sanity check
puts man_a1.id
puts woman_a1.id
puts man_b1.id
puts woman_b1.id
puts man_a2.id
puts woman_a2.id
puts man_a3.id