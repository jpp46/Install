using Pkg
Pkg.update()

ENV["PYTHON"]="/usr/local/anaconda3/bin/python"
ENV["JUPYTER"]="/usr/local/anaconda3/bin/jupyter"

package_list = [
	"PyCall", "IJulia", "Mux", "WebIO", "Interact", "Flux", "Calculus", "StatsBase", "HypothesisTests",
	"BlackBoxOptim", "BlackBoxOptimizationBenchmarking", "ProgressMeter", "DataStructures", "BSON", "ArrayFire",
	"PackageCompiler", "AbstractPlotting", "GDAL", "MakieGallery", "RDatasets", "Makie", "FileIO", "Colors", "GeometryTypes",
	"LinearAlgebra", "DataFrames", "CSV", "Plots", "ORCA", "PlotlyJS", "PyPlot", "GraphRecipes", "StatsPlots", "LightGraphs",
	"Cxx", "Libdl"
]

for package in package_list
    if ! in(package,keys(Pkg.installed())) Pkg.add(package) end
end

Pkg.build("PyCall")
Pkg.build("IJulia")
Pkg.update()

using WebIO
WebIO.install_jupyter_nbextension()
