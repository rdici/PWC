#!julia.exe

# AUTHOR: Robert DiCicco
# DATE: 2022-06-20
# Challenge 170 Primorial Numbers ( Julia )

using Primes

PRIME_COUNT = 10
product = 1
count = 1

function primorial() 
  product = 1
  println(product)
  count = 1
  for n in 1:100
    if isprime(n)
      product = product * n
      println(product)
      count += 1
      if count == PRIME_COUNT
        break
      end
    end
  end
end

primorial()

#--------------------------------------------------------
# SAMPLE OUTPUT
# 1
# 2
# 6
# 30
# 210
# 2310
# 30030
# 510510
# 9699690
# 223092870
