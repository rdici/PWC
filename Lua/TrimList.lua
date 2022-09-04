--[[
AUTHOR: Robert DiCicco
DATE: 2022-09-01
Challenge #180 Trim List ( Lua )
--]]

local write = io.write

function printInputLine(a,n)
	write("Input: ( ")
	for _, x in ipairs(a) do
		write(x,' ')
	end
	write(")")
	write(" and $i = ",n)
	write('\n')
end


function process(a,n)
	write("Output: ( ")
	for _, x in ipairs(a) do
		if x > n then
			write(x,' ')
		end
	end
	write(") ")
	write('\n\n')
end

arr = { 
	{9,0,6,2,3,8,5},
	{1,4,2,3,5}
}

mynums = {4,3}

function main()
	for idx = 1, 2 do
		printInputLine(arr[idx],mynums[idx])
		process(arr[idx],mynums[idx])
	end
end

main()
