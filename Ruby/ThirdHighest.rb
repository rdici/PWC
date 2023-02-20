#!/usr/bin/env ruby
=begin
-------------------------------------------
AUTHOR: Robert DiCicco
DATE  : 2023-02-20
Challenge 205 Third Highest ( Ruby )
-------------------------------------------
=end

arr = [[5,3,4], [5,6], [5,4,4,3]]

def Process(a) 
    ln = a.length
    if (ln < 3)
        puts("Output: #{a.max}")
    elsif (ln == 3)
        puts("Output: #{a.min}")
    else 
        a = a.sort
        a = a.uniq
        puts("Output: #{a[-3]}")
    end
    puts 
end

arr.each do |a|
    puts("Input: @array = #{a}")
    Process(a)
end


=begin
-------------------------------------------
ruby .\ThirdHighest.rb
Input: @array = [5, 3, 4]
Output: 3

Input: @array = [5, 6]
Output: 6

Input: @array = [5, 4, 4, 3]
Output: 3
-------------------------------------------
=end