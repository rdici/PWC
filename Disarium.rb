#!ruby.exe
# AUTHOR: Robert DiCicco
# DATE: 2022-07-19
# Challenge 174 Disarium Numbers ( Ruby )

inp = 0
arr = []

def getPosiSum( arr )
  sum = 0
  i = 0
  while i < arr.length() 
    sum += arr[i] ** (i+1)
    i += 1  
  end 
  return sum
end

count = 1
while count < 20
  arr = inp.digits.reverse()
  retval = getPosiSum(arr)
  if retval == inp
    print("#{retval} ")
    count += 1
  end
  inp += 1
end

#-------------------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> ruby .\Disarium.rb
# 0 1 2 3 4 5 6 7 8 9 89 135 175 518 598 1306 1676 2427 2646798 