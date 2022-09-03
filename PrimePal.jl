#!julia.exe
# AUTHOR: Robert DiCicco
# DATE: 2022-05-09
# Challengr #164 Prime Palindrome ( Julia )

using Primes
using Printf

for n in 1:1000
  n_rev = parse(Int,reverse(string(n)))
  if (isprime(n) && ( n == n_rev ))
      @printf("%d ",n)
  end
end
println()

# ----------------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> julia .\PrimePal.jl
# 2 3 5 7 11 101 131 151 181 191 313 353 373 383 727 757 787 797 919 929 