module Immanants

import AbstractAlgebra: character, Partition, @perm_str, Perm
import Combinatorics: permutations

export immanant, Partition

function immanant(λ, mat::Array{T,2}) where T <: Real
    len = sum(λ)
    chi = character(λ)
    total = zero(T)
    prod = one(T)
    for p in permutations(1:len |> collect)
        ph = p |> sortperm
        for i in 1:len
            prod *= mat[i, ph[i]]
        end
        prod *= chi(Perm(ph))
        total += prod

        prod = one(T)
    end
    total
end

function immanant(λ, mat::Array{Complex{T},2}) where T <: Real
    len = sum(λ)
    chi = character(λ)
    total = zero(T)
    prod = one(T)
    for p in permutations(1:len |> collect)
        ph = p |> sortperm
        for i in 1:len
            prod *= mat[i, ph[i]]
        end
        prod *= chi(Perm(ph))
        total += prod

        prod = one(T)
    end
    total
end

end # module
