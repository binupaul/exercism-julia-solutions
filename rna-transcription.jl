function to_rna(dna)
    map(function (ch)
        if ch == 'G'
            'C'
        elseif ch == 'C'
            'G'
        elseif ch == 'T'
            'A'
        elseif ch == 'A'
            'U'
        else
            throw(ErrorException("Invalid strand"))
        end
    end, dna)
end
