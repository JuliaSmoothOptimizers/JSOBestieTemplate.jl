using JSOBestieTemplate
using Documenter

DocMeta.setdocmeta!(
  JSOBestieTemplate,
  :DocTestSetup,
  :(using JSOBestieTemplate);
  recursive = true,
)

const page_rename = Dict("developer.md" => "Developer docs") # Without the numbers
const numbered_pages = [
  file for file in readdir(joinpath(@__DIR__, "src")) if
  file != "index.md" && splitext(file)[2] == ".md"
]

makedocs(;
  modules = [JSOBestieTemplate],
  authors = "Tangi Migot <tangi.migot@gmail.com>",
  repo = "https://github.com/JuliaSmoothOptimizers/JSOBestieTemplate.jl/blob/{commit}{path}#{line}",
  sitename = "JSOBestieTemplate.jl",
  format = Documenter.HTML(;
    canonical = "https://JuliaSmoothOptimizers.github.io/JSOBestieTemplate.jl",
  ),
  pages = ["index.md"; numbered_pages],
)

deploydocs(; repo = "github.com/JuliaSmoothOptimizers/JSOBestieTemplate.jl")
