push!(LOAD_PATH,"../src/")

using Documenter
using DocumenterCitations
using AngularSpectra

bib = CitationBibliography(joinpath(@__DIR__,"src/references.bib"),style=:authoryear)

makedocs(
plugins = [bib],
doctest = false,
clean = true,
sitename = "AngularSpectra.jl",
format = Documenter.HTML(size_threshold_ignore = ["API.md"]),
modules = [AngularSpectra],
warnonly = [:missing_docs],
authors = "Andrew Kille",
pages = [
"AngularSpectra.jl" => "index.md",
"API" => "API.md",
"Suggested Readings & References" => "references.md",
],
)

deploydocs(
    repo = "github.com/apkille/AngularSpectra.jl.git"
)