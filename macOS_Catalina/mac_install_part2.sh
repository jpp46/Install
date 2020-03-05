#!/bin/sh
# AMP
cargo install amp
cd "/Users/powers/Library/Application Support/amp/syntaxes"
wget https://raw.githubusercontent.com/sublimehq/Packages/master/C%2B%2B/C.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/C%2B%2B/C%2B%2B.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/HTML/HTML.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/JSON/JSON.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/JavaScript/JavaScript.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/Makefile/Makefile.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/Makefile/Make%20Output.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/Markdown/Markdown.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/Markdown/MultiMarkdown.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/Python/Python.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/Rust/Cargo.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/ShellScript/Bash.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/XML/XML.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/YAML/YAML.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/Git%20Formats/Git%20Attributes.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/Git%20Formats/Git%20Commit.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/Git%20Formats/Git%20Common.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/Git%20Formats/Git%20Config.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/Git%20Formats/Git%20Ignore.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/Git%20Formats/Git%20Link.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/Git%20Formats/Git%20Log.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/Git%20Formats/Git%20Mailmap.sublime-syntax
wget https://raw.githubusercontent.com/sublimehq/Packages/master/Git%20Formats/Git%20Rebase.sublime-syntax
wget https://raw.githubusercontent.com/evancz/elm-syntax-highlighting/master/src/elm.sublime-syntax

# PYROSIM
mkdir $HOME/.source-build
cd $HOME/.source-build
git clone https://github.com/ccappelle/pyrosim.git
cd pyrosim
sh build.sh
pip install -e .

# COCO BENCHMARKING
cd $HOME/.source-build
git clone https://github.com/numbbo/coco.git
cd coco
python do.py run-python
python do.py install-postprocessing

# SHC SHELL SCRIPT COMPILER
cd $HOME/.source-build
git clone https://github.com/neurobin/shc.git
cd shc
./configure && make && make install

# ELM OPTIMIZE SCRIPT to BIN
cd $HOME/.source-build
echo \
"#!/bin/sh

set -e

js=\"elm.js\"
min=\"elm.min.js\"

elm make --optimize --output=\$js \$@

uglifyjs \$js --compress 'pure_funcs=\"F2,F3,F4,F5,F6,F7,F8,F9,A2,A3,A4,A5,A6,A7,A8,A9\",pure_getters,keep_fargs=false,unsafe_comps,unsafe' | uglifyjs --mangle --output=\$min

echo \"Compiled size:\$(cat \$js | wc -c) bytes  (\$js)\"
echo \"Minified size:\$(cat \$min | wc -c) bytes  (\$min)\"
echo \"Gzipped size:\$(cat \$min | gzip -c | wc -c) bytes\"
" \
> $HOME/.source-build/optimize.sh
chmod +x optimize.sh
shc -f optimize.sh -o elm-make
mv elm-make /usr/local/bin

# CONFIGURE EXERCISM
exercism configure --token=c74dba39-40ac-4b31-bf6d-547783acc647

# INSTALL JULIA PACKAGES
cd $HOME
echo \
"
using Pkg
println(\"Installation of required packages to run this script\")
Pkg.update()
ENV[\"PYTHON\"]=\"/usr/local/anaconda3/bin/python\"
ENV[\"JUPYTER\"]=\"/usr/local/anaconda3/bin/jupyter\"
package_list = [\"PyCall\", \"IJulia\", \"Mux\", \"WebIO\", \"Interact\", \"Flux\", \"Calculus\", \"StatsBase\", \"HypothesisTests\",
\"BlackBoxOptim\", \"BlackBoxOptimizationBenchmarking\", \"ProgressMeter\", \"DataStructures\", \"BSON\", \"ArrayFire\",
\"PackageCompiler\", \"AbstractPlotting\", \"GDAL\", \"MakieGallery\", \"RDatasets\", \"Makie\", \"FileIO\", \"Colors\", \"GeometryTypes\",
\"LinearAlgebra\", \"DataFrames\", \"CSV\", \"Plots\", \"ORCA\", \"PlotlyJS\", \"PyPlot\", \"GraphRecipes\", \"StatsPlots\", \"LightGraphs\",
\"Cxx\", \"Libdl\"]
for package in package_list
    if ! in(package,keys(Pkg.installed())) Pkg.add(package) end
end
Pkg.build(\"PyCall\")
Pkg.build(\"IJulia\")
Pkg.update()
using WebIO
WebIO.install_jupyter_nbextension()
" \
> $HOME/install_script.jl
julia install_script.jl
rm install_script.jl

# SUPER COMPUTER ACCESS
ssh-keygen
ssh-copy-id jpowers4@bluemoon-user1.uvm.edu

# GITHUB SETUP
git config --global user.name "jpp46"
git config --global user.email jpowers4@uvm.edu
git config --global core.editor amp
git config --global credential.helper store

# EXTRA INFO
  # SLACK HANDLES
    # mecl-uvm elmlang rust-lang julialang cpplang wesbos data-lab-20

  # DISCORD HANDLES
    # rustsim handmade.network

  # APPS TO INSTALL
    # Pages Keynote Numbers
