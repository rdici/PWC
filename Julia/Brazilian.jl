#!julia.exe

# AUTHOR: Robert DiCicco
# DATE: 24-MAR-2022
# Challenge 157 Brazilian Number ( Julia )


#=
You are given a number $n > 3.

Write a script to find out if the given number is a Brazilian Number.

    A positive integer number N has at least one natural number B where 1 < B < N-1 where the representation of N in base B has same digits.


Example 1:

Input: $n = 7
Output: 1

Since 7 in base 2 is 111.

Example 2:

Input: $n = 6
Output: 0

Since 6 in base 2 is 110,
      6 in base 3 is 20 and
      6 in base 4 is 12.

Example 3:

Input: $n = 8
Output: 1

Since 8 in base 3 is 22.
=#

function checkDigits( n::String )
  d = split(n, "") 
  for (value) in ( d )
    retval = cmp(first(d), value)
    if retval != 0
      return 0 
    end
  end
  return 1
end

function baseLimitationNotice()
  println("\nOutput: 0")
  println("----------------------------------------")
  println("Reached base limitation")
  println("Base must fall into range: 2 <= base <= 36")
  println("----------------------------------------")
  exit(0)
end

function checkArgs(args)
  global num
  try
    num = parse(Int64, args[1])
  catch
    println("Error: Argument must be an integer")
    exit(0)
  finally 
    if num <= 3
      println("Error: Argument must be > 3")
      exit(0)
    else
      main(num)
    end
  end
end

function main(num)
  println("Input: $num")
  # base limited to 36
  for b = 2:(num - 2)
    if b > 36
      baseLimitationNotice()
    end
    x = string(num, base=b)
    retval = checkDigits(x)
    println("In base $b: $x")
    if retval == 1
      println("Output: $retval")
      exit(0)
    end
  end
  println("Output: 0")
end

checkArgs(ARGS)
