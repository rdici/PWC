#!ruby.exe

def AllDigitsOdd(d)
  arr = d.digits 
  #print("#{arr}\n")
  arr.each  { |x| 
    if (x.odd? == false)
      return false
    end
  }
  return true
end

retval = AllDigitsOdd(15)
if retval == true
  puts "True"
else
  puts false  
end
