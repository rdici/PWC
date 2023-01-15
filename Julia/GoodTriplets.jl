#!/usr/bin/env julia
#=
AUTHOR: Robert DiCicco
DATE  : 2023-01-15
Challenge 199 Good Triplets ( Julia )
=#
using Combinatorics

list = [3,0,1,1,9,7]
x = 7
y = 2
z = 3

seen = Dict()

for zz in combinations(list,3)
	if haskey(seen,zz)
		println(zz)
	else
		x1 = findfirst(item -> item == zz[1], list)
		x2 = findfirst(item -> item == zz[2], list)
		x3 = findfirst(item -> item == zz[3], list)
		if x1 > x2 || x2 > x3 || x1 > x3
			continue
		else
			if abs(zz[1] - zz[2]) > x || abs(zz[2] - zz[3]) > y || abs(zz[1] - zz[3]) > z
				continue
			else
				println(zz)
			end
		end
		seen[zz] = 1
	end
end