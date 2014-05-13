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

	def self.swap
  		flip = 1 + rand(2)
    	if flip == 2 
        	puts "Two"
    	else
        	puts "One"
    	end
	end 
end

man1 = Gpair.new("Ab")
woman1 = Gpair.new("Ab")

print "Father: "
puts man1.id
print "Mother: "
puts woman1.id