#!/usr/bin/ruby
# Family Tree - Genetic Pair swapping

# define the 'Customer' struct with a name and address.
puts"Defining the 'Customer' struct..."
Customer = Struct.new(:name, :address) do
  def greeting
    "Hello #{name}!"
  end
end

# define a person who lives in 'Customer'
dave = Customer.new("Dave", "123 Main")
dave.name     #=> "Dave"
dave.greeting #=> "Hello Dave!"

# test how to display 'Customer' data
puts "1 #{dave}"
puts "2 #{dave.name}"
puts "3 #{dave.address}"
puts "4 #{dave.greeting}"

# learn how to store customer data in an array
puts "Activating customer database"
customer_database = Array.new
puts "Adding Dave to the database"
customer_database.push(dave)
puts customer_database

# Creating new customers and add them to the database
puts "Please enter a new name and address to add to the database. Example: ''Dave'', ''123 Main''"

