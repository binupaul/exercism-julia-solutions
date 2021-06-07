
"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    dict = Dict('A' => 0, 'C' => 0, 'T' => 0, 'G' => 0)
    for ch in strand
        if !haskey(dict, ch)
            throw(DomainError(ch, "Invalid strand"))
        end
        dict[ch] = dict[ch] + 1
    end
    return dict
end
