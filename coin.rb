#!/usr/bin/ruby
# Coin flip

class Coin

def self.flip
  flip = 1 + rand(2)
    if flip == 2 
        puts "Two"
    else
        puts "One"
    end
end 

end

10.times do
  Coin.flip
end