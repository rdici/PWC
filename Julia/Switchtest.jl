using Switch

# basic switch constructs
function switch_with_fallthrough(x::Int)
    xs = Int[]
    @switch x begin
        @case 1
            push!(xs, 1)
            println("This is 1")

        @case 2
            push!(xs, 2)
            println("This is 2")

        @case 3
            push!(xs, 3)
            println("This is 3")

        @default
            push!(xs, 4)
            println("This is 4")
    end
    return xs
end

println(switch_with_fallthrough(2))