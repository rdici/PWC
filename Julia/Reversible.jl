#!julia.exe
using Printf

# AUTHOR: Robert DiCicco
# DATE: 2022-08-02
# Challenge 176 Reversible Numbers ( Julia )

function AllDigitsOdd( n )
  arr = digits(n)
  elems = length(arr)
  i = 1
  while i <= elems
    if (iseven(arr[i]))
      return false
    end
    i += 1
  end
  return true
end


for num in 10:99
  V = Vector(digits(num))
  VR = reverse(V)
  numsum = parse(Int64, join(V)) + parse(Int64, join(VR))
  if(AllDigitsOdd(numsum))
     @printf("%d ",num)
  end
end
println(" ")

#--------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> julia .\Reversible.jl
# 10 12 14 16 18 21 23 25 27 30 32 34 36 41 43 45 50 52 54 61 63 70 72 81 90  