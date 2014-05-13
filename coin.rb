#!/usr/bin/ruby
# Genetic coin flip

# Method 1
puts "Type a the number of flips"
x = gets.chomp.to_i

=begin
1.upto(x) do |i|
	if rand.round == 0
  		coin = "One"
	else
  		coin = "Two"
	end
	puts "#{i}: #{coin}"
end
=end

# Method 2
flip = Random.new

1.upto(x) do |i|
	flip.rand(2)
	puts "#{i}: #{flip}"
end