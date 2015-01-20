#!/usr/bin/env ruby

# Difference between square of sum and sum of squares

def sumSquareDifference( maxValue )
    sumSquares = 0
    sum = 0

    Range.new( 1, maxValue ).each do | value |
        sum += value
        sumSquares += value * value
    end

    squaresSum = sum * sum

    puts squaresSum - sumSquares
end

sumSquareDifference 100

