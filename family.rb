#!/usr/bin/ruby
# Family Tree - Genetic Pair swapping
# This script defines an even number of people, and has them pair off until there is one person.

# Get even number from user.

# puts "Please enter a positive number between 2 and 10."
# people = gets.chomp.to_i
begin
	puts "Please enter a positive number between 2 and 10."
	people = gets.chomp.to_i
end while (people < 1 || people > 10) && (people % 2 != 0)
puts "You typed: #{people}."

# people tells program how many people to start with in the first generation.
# for testing purposes, we'll have each person be given a number which are added together in each new person.

# Person as class
# Realize now I have issues with this class because I'm reading older docs.
class Person
	# attr_accessor is used so we can read/write :name, etc...
	attr_accessor :name, :gender, :number

	def initialize (name, gender, number)
		@name = name
		@gender = gender
		@number = number
	end

	def id
		puts "Hi! My name is #{name} and I am #{gender}. My number is #{number}."
	end

	def my_num
		number.to_i
		return my_num
	end
end

man = Person.new("Thorpe", "Male", 1)
woman = Person.new("Jain", "Female", 1)
child = Person.new("Bick", "Male", man.number.to_i + woman.number.to_i)
puts "Child number is #{child.number}."

=begin
woman = Person.new('Jain', 'Female', '1')
woman_n = woman.number
puts woman_n
child = Person.new('kid1', 'Male', '1')
puts "#{child}"
=end

=begin
#Person as Struct
Person = Struct.new(:name, :gender, :number) do
  def id
    puts "Hi! My name is #{name} and I am #{gender}. My number is #{number}"
  end
end

man = Person.new('Thorpe', 'Male', '1')
man_n = man.number
puts man_n
woman = Person.new('Jain', 'Female', '1')
woman_n = woman.number
puts woman_n
child = Person.new('kid1', 'Male', '1')
puts "#{child}"

=end