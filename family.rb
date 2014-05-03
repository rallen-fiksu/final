#!/usr/bin/ruby
# Family Tree - Genetic Pair swapping


Customer = Struct.new(:name, :address) do
  def greeting
    "Hello #{name}!"
  end
end

dave = Customer.new("Dave", "123 Main")
dave.name     #=> "Dave"
dave.greeting #=> "Hello Dave!"

puts "1 #{dave}"
puts "2 #{dave.name}"
puts "3 #{dave.address}"
puts "4 #{dave.greeting}"

