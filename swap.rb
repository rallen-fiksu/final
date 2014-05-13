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
x = ""
flip = 1 + rand(2)
    if flip == 2 
       	man1.pair[1,1].to_s = x
   	else
       	man1.pair[0,1].to_s = x
   	end
put "X: #{x}"
child1 = Gpair.new(x + woman1.pair[0,1])
print "Child gene pair: "
puts child1.pair
