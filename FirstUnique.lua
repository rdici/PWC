local write = io.write
mytab = {}
arr = { 
	"Perl Weekly Challenge",
	"Long Live Perl"
}
function prep()
    --mytab = {}
	for x = 65,90 do
		s=string.char(x)
	    mytab[s] = 0
	end
end

function main()
    idx = 1
	write("Input: $s = \"",arr[idx],"\" \n");
	mystr = arr[idx]
    mystr = mystr:gsub("%s+", "")
	-- prep()
    for i = 1, #mystr do
        local c = mystr:sub(i,i)
        print("Found ",c)
        if mytab.c > 0 then
            -- mytab[c] = mytab[c] + 1
            mytab.c = mytab.c + 1
        end
    end
    for k, v in pairs(mytab) do
       print(k,v) 
    end
    print(mytab)
end
main()
