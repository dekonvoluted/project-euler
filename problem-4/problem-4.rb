#!/usr/bin/env ruby

# Find largest palindromic number formed as a multiple of two three digit numbers

maxPalindrome = 0

for firstFactor in Range.new( 100, 999 )
    for secondFactor in Range.new( 100, 999 )
        product = firstFactor * secondFactor
        if product.to_s == product.to_s.reverse
            if product > maxPalindrome
                maxPalindrome = product
            end
        end
    end
end

puts maxPalindrome

