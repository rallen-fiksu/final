#!/usr/bin/ruby
# Genetic swap

# define genetic pairs
class Gpair

	attr_accessor :pair

	def initialize (pair)
		@pair = pair
	end

	# sanity check for easy idenfitication. a bit redundant
	def id
		puts "Gene pair: #{pair}"
	end
end

def inherit(a,b)
  x = "X"
  y = "Y"
  flip = 1 + rand(2)
    if flip == 2 
      x = a.pair[1,1]
    else
      x = a.pair[0,1]
    end
  flip = 1 + rand(2)
    if flip == 2 
      y = b.pair[1,1]
    else
      y = b.pair[0,1]
    end
    puts "#{x}#{y}"
end

man1 = Gpair.new("Ab")
woman1 = Gpair.new("Ab")

print "Father: "
puts man1.id
print "Mother: "
puts woman1.id

print "Child1: "
child1 = Gpair.new(inherit(man1,woman1))
print "Child2: "
child2 = Gpair.new(inherit(man1,woman1))
print "Child3: "
child2 = Gpair.new(inherit(man1,woman1))

grandchild = Gpair.new(inherit(child1,child2))
