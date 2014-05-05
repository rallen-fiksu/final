#!/usr/bin/ruby
# This is for modeling gene inheritance and expression. 
# The following model is for green and yellow peas.

# Genes as a Hash
puts "---"
puts "Genes stored in a Hash"
green_pea = {"primary" => "G", "secondary" => "G"}
yellow_pea = {"primary" => "y", "secondary" => "y"}
child_pea = {"primary" => "0", "secondary" => "0"}
child_pea["primary"] = green_pea["primary"]
child_pea["secondary"] = yellow_pea["secondary"]

puts "Green Pea Hash: #{green_pea}"
puts "Yellow Pea Hash: #{yellow_pea}"
puts "Green Pea: #{green_pea['primary']}#{green_pea['secondary']}"
puts "Yellow Pea: #{yellow_pea['primary']}#{yellow_pea['secondary']}"
puts "Child Pea: #{child_pea['primary']}#{child_pea['secondary']}"

puts "---"

# Genes as a Struct
puts "Genes stored in a Struct"
gene = Struct.new(:pri, :sec) do
	def pair
		"#{pri}#{sec}"
	end
end

grun_pea = gene.new("G", "G")
geld_pea = gene.new("y", "y")
kind_pea = gene.new(grun_pea.pri, geld_pea.pri)

puts "Green Pea: #{grun_pea.pair}"
puts "Yellow Pea: #{geld_pea.pair}"

puts "Child Pea: #{kind_pea.pair}"
puts "---"