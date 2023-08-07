#!/usr/bin/env julia
#=
---------------------------------------
AUTHOR: Robert DiCicco
DATE  : 2023-08-07
Challenge 229 Lexical Order Task 1 ( Julia )
---------------------------------------
=#

using Printf

strs = [["abc", "bce", "cae"],["yxz", "cba", "mon"]]

cnt = 0

function CheckLexOrder(e)
    a = collect(e)
    lexstr = sort!(a)
    lexstr = join(lexstr)
    revstr = reverse(lexstr)
    if cmp(e,lexstr) == 0
        return 1
    elseif cmp(e,revstr) == 0
        return 1
    else
        return 0
    end
end


for str in strs
    global cnt
    @printf("Input: @str = %s\n",str)
    for elm in  str
        retval = CheckLexOrder(elm)
        if retval == 0
            cnt += 1
        end
    end
    @printf("Output: %d\n\n",cnt)
    cnt = 0
end

#=
---------------------------------------
SAMPLE OUTPUT
julia .\LexOrder.jl

Input: @str = ["abc", "bce", "cae"]
Output: 1

Input: @str = ["yxz", "cba", "mon"]
Output: 2
---------------------------------------
=#