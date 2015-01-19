#!/usr/bin/env ruby

# Least common multiple of 1 to 20

def leastCommonMultiple( factors )
    return nil if factors.include?( 0 )

    maxFactor = 1
    minFactor = 1
    factorial = 1

    factors.each do | factor |
        maxFactor = factor if factor > maxFactor
        minFactor = factor if factor < minFactor
        factorial *= factor
    end

    Range.new( minFactor * minFactor, factorial ).each do | multiple |
        foundMultiple = true

        factors.each do | factor |
            if multiple % factor != 0
                foundMultiple = false
                break
            end
        end

        if foundMultiple == true
            return multiple
        end

        foundMultiple = true
    end
end

puts leastCommonMultiple( Range.new( 1, 20 ) )

