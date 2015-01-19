#!/usr/bin/env ruby

# Find largest palindromic number formed as a multiple of two three digit numbers

maxPalindrome = 0

Range.new( 100, 999 ).reverse_each do | firstFactor |
    Range.new( firstFactor, 999 ).reverse_each do | secondFactor |
        product = firstFactor * secondFactor
        break if product < maxPalindrome
        maxPalindrome = product if product.to_s == product.to_s.reverse and product > maxPalindrome
    end
end

puts maxPalindrome

