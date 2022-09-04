#!ruby.exe
# AUTHOR: Robert DiCicco
# DATE: 2022-08-02
# Challenge 176 Reversible Numbers ( Ruby )

def AllDigitsOdd(d)
  arr = d.digits 
  arr.each  { |x| 
    if (x.odd? == false)
      return false
    end
  }
  return true
end

for num in 10..99 do
  revarr = num.digits
  newsum = num + revarr.join("").to_i
  if (AllDigitsOdd(newsum))
      print("#{num} ")
  end
end
puts " "

#-------------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> ruby .\Reversible.rb
# 10 12 14 16 18 21 23 25 27 30 32 34 36 41 43 45 50 52 54 61 63 70 72 81 90  