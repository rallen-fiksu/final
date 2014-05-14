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
		@gene = gene
	end

	# Sanity check to output said information
	def id
		puts "Hi! My name is #{name} and I am #{gender}. My gene_gene is #{gene}."
	end
end

def inherit(a="X", b="Y")
  x = "X"
  y = "Y"
  flip = 1 + rand(2)
    if flip == 2 
      x = a.gene[1,1]
    else
      x = a.gene[0,1]
    end
  flip = 1 + rand(2)
    if flip == 2 
      y = b.gene[1,1]
    else
      y = b.gene[0,1]
    end
  puts "#{x}#{y}"
  return "#{x}#{y}"
end

# Generation 1
man_a1 = Person.new("Thorpe", "Male", "AA")
woman_a1 = Person.new("Jain", "Female", "BB")
man_b1 = Person.new("Rolb", "Male", "aa")
woman_b1 = Person.new("Fess", "Female", "bb")
# Generation hash comes after objects are defined.
generation1 = {:couple1 => [man_a1, woman_a1], :couple2 => [man_b1, woman_b1]}

# Makin babies


# Generation 2
man_a2 = Person.new("Durn", "Male", (inherit man_a1, woman_a1))
woman_a2 = Person.new("Lok", "Female", (inherit man_a1, woman_a1))
generation2 = {:couple1 => [man_a2, woman_a2]}

# Generation 3
man_a3 = Person.new("Wince", "Male", (inherit man_a2, woman_a2))
generation2 = {:individual => [man_a3]}

# Sanity check
puts man_a1.id
puts woman_a1.id
puts man_b1.id
puts woman_b1.id
puts man_a2.id
puts woman_a2.id
puts man_a3.id