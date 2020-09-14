# Immanants.jl
[![Build Status](https://travis-ci.org/davidamaro/Immanants.jl.svg?branch=master)](https://travis-ci.org/davidamaro/Immanants.jl)
[![Build status](https://ci.appveyor.com/api/projects/status/y8qer0ev0h1ct4o4?svg=true)](https://ci.appveyor.com/project/davidamaro/immanants-jl)

Extension of AbstractAlgebra.jl able to compute immanants.

## Example (from `runtests.jl`)

```
julia>   mat = [0 1 0 0;1 0 1 0; 0 1 0 1; 0 0 1 0]
julia>   immanant(Partition([4]),  mat)
1

```
