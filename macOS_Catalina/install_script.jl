using Pkg
Pkg.update()

package_list = [
"PyCall", "IJulia", "Flux", "Calculus", "StatsBase", "HypothesisTests", "DelimitedFiles", "BlackBoxOptim", "BlackBoxOptimizationBenchmarking", "ProgressMeter", "DataStructures", "BSON", "Distributions", "Makie", "Images", "ImageTransformations", "FileIO", "Colors", "GeometryTypes", "LinearAlgebra", "DataFrames", "CSV", "Plots", "GraphRecipes", "StatsPlots", "LightGraphs", "ColorSchemes", "Formatting", "Combinatorics", "Distributions", "Distributed"
]

for package in package_list
    Pkg.add(package)
end

Pkg.update()
