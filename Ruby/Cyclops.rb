#!ruby.exe
require 'prime'

# AUTHOR: Robert DiCicco
# DATE: 2022-08-08
# Challenge 177 Palindromic Prime Cyclops ( Ruby )

def MidChar ( num )
  x = num.to_s.length()
  case x
    when 3
      return num.to_s[1,1]
    when 5
      return num.to_s[2,1]
    when 7
      return num.to_s[3,1]
    else
      return -1
   end
end

def IsOdd ( str )
  return str.digits.length().odd?
end

count = 0
candidate = 100

while ( count <= 20 )
  if (IsOdd(candidate) && Prime.prime?(candidate) && candidate.to_s == candidate.to_s.reverse && MidChar(candidate) == "0" )
    print("#{candidate} ")
    count += 1
  end
  candidate += 1
end
puts " "

#-----------------------------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> ruby .\Cyclops.rb
# 101 16061 31013 35053 38083 73037 74047 91019 94049 1120211 1150511 1160611 1180811 1190911 1250521 1280821 1300031 1360631 1390931 1490941 1520251  