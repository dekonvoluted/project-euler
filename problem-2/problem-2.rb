#!/usr/bin/env ruby

# Sum up all even Fibonacci numbers under a max Value

def sumFibo( maxValue )
    a = 0
    b = 1

    sum = 0

    while b < maxValue
        b = a + b
        a = b - a

        sum += b if b % 2 == 0
    end

    puts sum
end

sumFibo 4e6

