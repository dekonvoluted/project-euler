#!/usr/bin/env ruby

# Product of Pythagorean triplet

Range.new( 1, 998 ).each do | a |
    Range.new( a, 999 ).each do | b |
        puts a * b * ( 1000 - a - b ) if ( 1000 - ( a + b ) ) ** 2 == a * a + b * b
    end
end

