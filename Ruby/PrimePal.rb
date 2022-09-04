#!ruby.exe
require 'prime'

# AUTHOR: Robert DiCicco
# DATE: 2022-05-10
# Challenge #164 Prime Palindrome ( Ruby )

arr = ()

(1..1000).each do |n|
  n_rev = n.to_s.reverse.to_i 
  if Prime.prime?(n) && (n == n_rev)
    print("#{n} ")
    arr.push(p)
  end
end
print("\n")

#----------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> ruby .\PrimePal.rb
# 2 3 5 7 11 101 131 151 181 191 313 353 373 383 727 757 787 797 919 929 