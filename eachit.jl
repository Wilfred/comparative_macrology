# Test on Julia 0.3

macro each_it(arr, body)
    quote
        for it in $arr
            $body
        end
    end
end

my_array = [1, 2, 3, 4]

@each_it my_array begin
    println("it: $it")
    one_more = it + 1
    println("one_more: $one_more")
end
