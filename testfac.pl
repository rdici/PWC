require 'prime'

def prime_factors(n)
  prime_array = []    
  p = 2
  if n < 2
      return p
  end
  while p < n && p < 1000000
    if n % p == 0
      prime_array.push(p)
    end
  p +=1
  end

  primes = []

  prime_array.size.times do |i|
    if n > 1
      n = n / prime_array[i]
      primes.push(prime_array[i])
    end
  end
  #return primes.last
  return primes
end

arr = prime_factors(6)
puts arr

