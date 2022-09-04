using Random
function main(args)
    #@show args
    x = ARGS[1]
    println(ARGS[1])
    #x = rand(Int, 1)
    xi =  parse(Int64, x)
    
    println("x = $xi")
    println(typeof(xi))
end
main(ARGS)