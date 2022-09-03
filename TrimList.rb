#!ruby.exe
# AUTHOR: Robert DiCicco
# DATE: 2022-08-31
# Challenge 180 Trim List ( Ruby )

arr = [ [1,4,2,3,5], [9,0,6,2,3,8,5] ]
nums = [3,4]
count = 0

while count < 2
  results = []
  val = arr[count]
  puts("\nInput: @n = #{arr[count]} and $i = #{nums[count]}")
  arr[count].each do | i |
    if i > nums[count]
      results.push(i)
    end
  end
  puts("Output: #{results}")
  count += 1
  
end

#---------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> ruby .\TrimList.rb

# Input: @n = [1, 4, 2, 3, 5] and $i = 3
# Output: [4, 3, 5]

# Input: @n = [9, 0, 6, 2, 3, 8, 5] and $i = 4
# Output: [9, 6, 8, 5]