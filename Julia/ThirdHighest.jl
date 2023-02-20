#!/usr/bin/env julia
#=
-------------------------------------------
AUTHOR: Robert DiCicco
DATE  : 2023-02-20
Challenge 205 Third Highest ( Julia )
-------------------------------------------
=#
using Printf

arr = [[5,3,4], [5,6], [5,4,4,3]]

function Process(a)
    ln = length(a)
    if (ln < 3)
        println("Output: ",maximum(a))
    elseif ( ln == 3 )
        println("Output: ",minimum(a))
    else
        sort!(a)
        unique!(a)
        #println(a)
        @printf("Output: %d\n",a[end-2])
    end
    println(" ")
end

for a in arr
    @printf("Input: @array = %s\n", a)
    Process(a)
end

#=
-------------------------------------------
SAMPLE OUTPUT
julia .\ThirdHighest.jl
Input: @array = [5, 3, 4]
Output: 3

Input: @array = [5, 6]
Output: 6

Input: @array = [5, 4, 4, 3]
Output: 3
-------------------------------------------
=#