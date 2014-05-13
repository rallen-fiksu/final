#!/usr/bin/ruby
# Genetic swap

class Gpair

	attr_accessor :pair

	def initialize (pair)
		@pair = pair
	end

	def id
		puts "Gene pair: #{pair}"
	end
end

man1 = Gpair.new("Ab")
woman1 = Gpair.new("Ab")

print "Father: "
puts man1.id
print "Mother: "
puts woman1.id

# Gene inheritance
x = "P"
flip = 1 + rand(2)
    if flip == 2 
       	x = man1.pair[1,1]
   	else
       	x = man1.pair[0,1]
   	end
y = "P"
flip = 1 + rand(2)
    if flip == 2 
       	y = man1.pair[1,1]
   	else
       	y = man1.pair[0,1]
   	end
child1 = Gpair.new(x + y)
print "Child gene pair: "
puts child1.pair
