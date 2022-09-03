#!julia.exe

# AUTHOR: Robert DiCicco
# DATE: 2022-07-13
# Challenge 173 Sylvbester's Sequence ( Julia )

arr = [BigInt(2)]
count = 1
println(arr[1])
while true
  sum = BigInt(prod(arr) + 1)
  push!(arr,sum)
  println(sum)
  global count += 1
  if count == 10
    break
  end
end

# PS G:\Projects\Perl\Challenges> julia .\Sylvester.jl
# 3
# 7
# 43
# 1807
# 3263443
# 10650056950807
# 113423713055421844361000443
# 12864938683278671740537145998360961546653259485195807
# 165506647324519964198468195444439180017513152706377497841851388766535868639572406808911988131737645185443