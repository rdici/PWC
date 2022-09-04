#ruby.exe
require 'date'

# AUTHOR: Robert DiCiccco
# DATE: 2022-07-25
# Challenge 175 Last Sunday ( Ruby )

def CreateDateObject( y, m)
  td = Date.new(y,m,1).next_month.prev_day
  return td
end

year = ARGV[0].to_i
for m in 1..12 do
  td = CreateDateObject(year,m)
  wd = td.wday
  if wd != 7 
    puts (td - wd).to_s
  else
    puts td  
  end
end

#-------------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> ruby .\LastSunday.rb 2022
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
