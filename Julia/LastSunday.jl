#!julia.exe
using Dates

# AUTHOR: Robert DiCicco
# DATE: 2022=07-26
# Challenge 175 Last Sunday ( Julia )

function checkArgs(args)
  global year
  try
    year = parse(Int64, args[1])
  catch
    println("Error: Tear must be an integer >= 1900")
    exit(0)
  finally 
    if year < 1900
      println("Error: Year must be >= 1900")
      exit(0)
    else
      main(year)
    end
  end
end

function LastSunday( yr, mth) 
  td = Dates.Date(yr,mth,1)
  ld = Dates.lastdayofmonth(td)
  wd = Dates.dayofweek(ld)
  if wd == 7
    println(ld)
  else
    println(ld - Dates.Day(wd))
  end  
end

function main(year)
  for mth in 1:12
    LastSunday(year,mth)
  end
end

checkArgs(ARGS)

#----------------------------------------------
# SAMPLE Output
# PS G:\Projects\Perl\Challenges> julia .\LastSunday.jl 2022
# 2022-01-30
# 2022-02-27
# 2022-03-27
# 2022-04-24
# 2022-05-29
# 2022-06-26
# 2022-07-31
# 2022-08-28
# 2022-09-25
# 2022-10-30
# 2022-11-27
# 2022-12-25