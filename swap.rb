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

def swap(a)
  	flip = 1 + rand(2)
    if flip == 2 
       	puts a[1,1]
   	else
       	puts a[0,1]
   	end
end 

man1 = Gpair.new("Ab")
woman1 = Gpair.new("Ab")

print "Father: "
puts man1.id
print "Mother: "
puts woman1.id

# Male gene inheritance

puts "Child 1st allele: "
child1 = Gpair.new(man1.pair[0,1] + woman1.pair[0,1])
puts child1.pair

puts "Test"
puts man1.pair.swap