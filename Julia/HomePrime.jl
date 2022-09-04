#!julia.exe

# AUTHOR: Robert DiCicco
# DATE: 2022-06-07
# Challenge 168 Home Primes ( Julia )

using Primes
results = []

function homeprime( hp )
  temp = []
  s = " "
  temp = factor(Array, hp)
  for i in 1:length(temp)
    s = s * repr(temp[i])
  end
  return(parse(Int64, s))
end


hp = 8
flag = 1
push!(results,hp)
while flag > 0 
  retval = homeprime(hp)
  push!(results,retval)
  isprime(retval) ? (global flag = 0) : (global hp = retval)
end

println(results)

#----------------------------------------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> julia .\HomePrime.jl
# Any[8, 222, 2337, 31941, 33371313, 311123771, 7149317941, 22931219729, 112084656339, 3347911118189, 11613496501723, 97130517917327, 531832651281459, 3331113965338635107]