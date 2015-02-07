#!/usr/bin/env ruby

# Sum of all primes under two million

def isPrime( number, primes, primeSquares )
    primes.each do | prime |
        return true if primeSquares[ prime ] > number
        return false if number % prime == 0
    end
    return true
end

def sumPrimes( maxValue )
    primes = Array.new
    primes += [ 2 ]
    primeSquares = Hash.new
    primeSquares[ 2 ] = 4

    sum = 2
    number = 3
    while number < maxValue
        if isPrime number, primes, primeSquares
            sum += number
            primes += [ number ]
            primeSquares[ number ] = number * number
        end
        number += 2
    end

    return sum
end

puts sumPrimes 2000000

