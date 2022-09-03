#!ruby.exe
# AUTHOR: Robert DiCicco
# DATE: 2022-07-12
# Challenge 173 Esthetic Number ( Ruby )


def is_esthetic? ( num )
  arr = num.digits
  prev = arr[0]
  i = 1;
  while ( i < arr.length() )
    if (arr[i] - prev).abs == 1 
      prev = arr[i]
      i += 1
    else
      return -1
    end             # if
   end              # while
  return 1
end                 # def


for e in (100..5000) do
retval = is_esthetic? ( e )
if retval == 1
  print"#{e} "
end
end
puts " "

#-------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> ruby .\Esthetic.rb
# 101 121 123 210 212 232 234 321 323 343 345 432 434 454 456 543 545 565 567 654 
# 656 676 678 765 767 787 789 876 878 898 987 989 1010 1012 1210 1212 1232 1234 2101 
# 2121 2123 2321 2323 2343 2345 3210 3212 3232 3234 3432 3434 3454 3456 4321 4323 
# 4343 4345 4543 4545 4565 4567  