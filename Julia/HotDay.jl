#!julia.exe
using Dates

# AUTHOR: Robert DiCicco
# DATE: 2022-09-07
# Challenge #181 Hot Day ( Julia )

daytemps = Dict()

function compareTemps()
  open("temperature.txt") do f
    while ! eof(f) 
      s = readline(f)  
      year = SubString(s, 1, 10)
      temp = SubString(s,13)
      d = DateTime(year,"yyyy-mm-dd")
      d2 = (d + Dates.Day(-1))
      d2_str = (Dates.format(d2, "yyyy-mm-dd"))
      if ! haskey(daytemps, d2_str)
        continue
      end
      if daytemps[year] > daytemps[d2_str]
        println(year)
      end
    end
    close(f)
  end
  
end

function setDict()
  open("temperature.txt") do f
    while ! eof(f) 
      s = readline(f)  
      year = SubString(s, 1, 10)
      temp = SubString(s,13)
      daytemps[year] = temp
    end
    close(f)
  end
end

function main()
  setDict()
  compareTemps()
end

main()

#----------------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> julia .\HotDay.jl
# 2022-08-06
# 2022-08-05
# 2022-08-10
# 2022-08-08
# 2022-08-02

