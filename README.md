# Immanants.jl
Extension of AbstractAlgebra.jl able to compute immanants.

## Example (from `runtests.jl`)

```
julia>   mat = [0 1 0 0;1 0 1 0; 0 1 0 1; 0 0 1 0]
julia>   immanant(Partition([4]),  mat)
1

```
