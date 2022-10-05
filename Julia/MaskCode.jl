#!/usr/bin/env julia
# AUTHOR: Robert DiCicco
# DATE: 2022-10-04
# Challenge 185 Mask Code ( Julia )

inp = ["ab-cde-123", "123.abc.420", "3abc-0010.xy", "1234567.a", "a-1234-bc", "a.b.c.d.e.f"]

for i in inp 
  cnt = 1;                    # where we are in the string
  fnd = 0;                    # count of characters changed
  while fnd < 4 
    sp = SubString(i,cnt,cnt)
    if ! occursin(r"[a-z0-9]", sp)
      cnt += 1
      continue
    end
    i_arr = split(i,"")
    i_arr[cnt] = "x"
    i = join(i_arr)
    fnd += 1
    cnt += 1
  end
  println(i)
end

#--------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> julia .\MaskCode.jl
# xx-xxe-123
# xxx.xbc.420
# xxxx-0010.xy
# xxxx567.a
# x-xxx4-bc
# x.x.x.x.e.f
 

