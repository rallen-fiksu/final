#!/usr/bin/ruby
# Hard coded version

# Define person class
class Person
	# attr_accessor is used so we can read/write :name, etc...
	attr_accessor :name, :gene

	# Define biographical and genetic information
	def initialize (name, gene)
		@name = name
		@gene = gene
	end

	# Sanity check to output said information
	def id
		puts "Hi! My name is #{name} and my gene_gene is #{gene}."
	end
end

# Generation 1 Gene seeding
def gene_seed
	seed = rand(4)
	if seed == 0
		m = "A"
	elsif seed == 1
		m = "B"
	elsif seed == 2
		m = "a"
	else
		m = "b"
	end

	seed = rand(4)
	if seed == 0
		n = "A"
	elsif seed == 1
		n = "B"
	elsif seed == 2
		n = "a"
	else
		n = "b"
	end

	puts "#{m}#{n}"
  	return "#{m}#{n}"
end

# Specify inherit with the parents of the child
# Ex: inherit(parent1, parent2)
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

def expression(a)
	if a == "AA"
		puts "Black Hair"
	elsif a == "AB" or a == "BA"
		puts "Black Hair"
	elsif a == "BB"
		puts "Brown Hair"
	elsif a == "Aa" or a == "aA"
		puts "Black Hair"
	elsif a == "Ba" or a == "aB"
		puts "Brown Hair"
	elsif a == "Ab" or a == "bA"
		puts "Black Hair"
	elsif a == "Bb" or a == "bB"
		puts "Brown Hair"
	elsif a == "aa"
		puts "White Hair"
	else a == "bb"
		puts "Blond Hair"
	end
	puts "Hair color: #{a}."
end
		

# Generation 1
man_a1 = Person.new("Thorpe", gene_seed)
woman_a1 = Person.new("Jain", gene_seed)
man_b1 = Person.new("Rolb", gene_seed)
woman_b1 = Person.new("Fess", gene_seed)
# Generation hash comes after objects are defined.
generation1 = {:couple1 => [man_a1, woman_a1], :couple2 => [man_b1, woman_b1]}

# Generation 2
man_a2 = Person.new("Durn", (inherit man_a1, woman_a1))
woman_a2 = Person.new("Lok", (inherit man_b1, woman_b1))
generation2 = {:couple1 => [man_a2, woman_a2]}

# Generation 3
man_a3 = Person.new("Wince", (inherit man_a2, woman_a2))
generation2 = {:individual => [man_a3]}

# Sanity check
puts man_a1.id
puts woman_a1.id
puts man_b1.id
puts woman_b1.id
puts man_a2.id
puts woman_a2.id
puts man_a3.id