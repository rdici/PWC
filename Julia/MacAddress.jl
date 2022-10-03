#!julia.exe
# AUTHOR: Robert DiCicco
# DATE: 2022-10-03
# Challenge 185 Mac Address ( Julia )

inp = ["1ac2.34f0.b1c2", "abc1.20f1.345a"];

for i in inp
  outln = ""
  wrk = split(i,".")
  a = join(wrk)
  x = 1
  
  while  x < sizeof(a)
    outln = outln * SubString(a,x,x+1) * ":"
    x += 2
  end
  println(chop(outln))
end

#-----------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> julia .\MacAddress.jl
# 1a:c2:34:f0:b1:c2
# ab:c1:20:f1:34:5a

