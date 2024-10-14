# JSOBestie Template

## Creating a new package

We rely on [BestieTemplate.jl](https://github.com/JuliaBesties/BestieTemplate.jl) for generating packages, so please have a look at their documentation.

```julia
julia> using BestieTemplate
julia> BestieTemplate.generate("path/to/YourNewPackage.jl")
julia> # or BestieTemplate.apply("path/to/YourExistingPackage.jl")
```

Please answer all the questions, and once the new package is ready, adds an additional layer on the template with the following.

```julia
julia> using JSOBestieTemplate
julia> JSOBestieTemplate.apply("path/to/YourExistingPackage.jl")
```

## Updating your package

```julia
julia> using BestieTemplate
julia> BestieTemplate.update("path/to/YourExistingPackage.jl")
julia> JSOBestieTemplate.apply("path/to/YourExistingPackage.jl")
```
