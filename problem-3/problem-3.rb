#!/usr/bin/env ruby

# Find the prime factors of a number

def findNextPrime( knownPrimes, knownPrimeSquares )
    nextPrimeFound = false

    primeCount = 0
    isPrime = true
    candidate = knownPrimes.last + 2
    if knownPrimes.last == 2
        candidate = 3
    end

    while not nextPrimeFound
        while knownPrimeSquares.at( primeCount ) <= candidate
            if candidate % knownPrimes.at( primeCount ) == 0
                isPrime = false
                break
            end
            primeCount += 1
        end

        if isPrime
            knownPrimes << candidate
            knownPrimeSquares << candidate * candidate
            nextPrimeFound = true
        else
            isPrime = true
        end

        primeCount = 1
        candidate += 2
    end
end

def findNextFactor( number, primes, primeSquares )
    if number == 1
        return 1
    end

    primes.each do | prime |
        if number % prime == 0
            return prime
        end
    end

    while true
        if primeSquares.last > number
            return number
        end

        findNextPrime( primes, primeSquares )
        if number % primes.last == 0
            return primes.last
        end
    end
end

def primeFactors( input )
    number = input

    factors = Array.new

    primes = Array.new
    primes << 2
    primeSquares = Array.new
    primeSquares << 2 * 2

    while true
        nextFactor = findNextFactor( number, primes, primeSquares )
        if nextFactor == 1
            puts factors
            return
        end
        factors << nextFactor if not factors.include?( nextFactor )
        number /= nextFactor
    end
end

primeFactors 600851475143
