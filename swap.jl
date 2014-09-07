macro swap!(x, y)
    quote
        local tmp = $(esc(y))
        $x = $(esc(y))
        $y = tmp
    end
end

a = 1
b = 2

@swap!(a, b)

# prints: a: 1, b: 2
println("a: $a, b: $b")
