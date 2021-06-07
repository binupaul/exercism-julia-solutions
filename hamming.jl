"""
    distance(a,b)

Return the hamming distance between a and b

"""
function distance(a, b)
    indices_a = collect(eachindex(a))
    indices_b = collect(eachindex(b))
    if (indices_a != indices_b)
        throw(ArgumentError("Lengths are not equal"))
    end

    reduce(+, 1 for i in indices_a if a[i] != b[i]; init=0)
end
