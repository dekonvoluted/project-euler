#!/usr/bin/env ruby

# Sum of multiples of 3 or 5 under 1000

def solve( maxValue )

    return if maxValue < 1

    sum = 0;
    count = 1;
    while count < maxValue
        sum += count if count % 3 == 0 or count % 5 == 0
        count += 1
    end
    puts sum
end

solve 1000

