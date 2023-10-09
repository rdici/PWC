#!/usr/bin/env ruby
=begin
---------------------------------
AUTHOR: Robert DiCicco
DATE  : 2023-10-09
Challenge 238 Task 01 Running Sum ( Ruby )
---------------------------------
=end

myints = [[1, 2, 3, 4, 5],[1, 1, 1, 1, 1],[0, -1, 1, 2]]

myints.each do |mints|
    puts("Input: @int = #{mints}")
    sum = 0
    out = []
    mints.each do |i|
        out.push(i + sum)
        sum += i
    end
    puts("Output: #{out}\n\n")
end

=begin
---------------------------------
SAMPLE OUTPUT
ruby .\RunningSum.rb

Input: @int = [1, 2, 3, 4, 5]
Output: [1, 3, 6, 10, 15]

Input: @int = [1, 1, 1, 1, 1]
Output: [1, 2, 3, 4, 5]

Input: @int = [0, -1, 1, 2]
Output: [0, -1, 0, 2]
---------------------------------
=end