#!/usr/bin/env ruby

# Find the nth prime

def nthPrime( n )
    primes = Array.new
    primeSquares = Array.new

    primes << 2
    primeSquares << 2 * 2
    primesFound = 1

    primeCount = 0
    candidate = 3
    isPrime = true

    while primesFound <= n
        while primeSquares.at( primeCount ) <= candidate
            if candidate % primes.at( primeCount ) == 0
                isPrime = false
                break
            end
            primeCount += 1
        end

        if isPrime
            primes << candidate
            primeSquares << candidate * candidate
            primesFound += 1
        else
            isPrime = true
        end

        primeCount = 1
        candidate += 2
    end

    puts primes.at( n - 1 )
end

nthPrime( 10001 )

