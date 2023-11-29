# tRNA-Seq quantification benchmarking manuscript analysis 
Processing and plotting of output from the tRNA-Seq simulation and quantification pipeline. 

Manuscript pre-print now available here.

## Repository structure

- input: output from tRNA-Seq simulation and quantification pipeline for further analysis/plotting
- notebooks: Notebooks to perform analysis/plotting. Run in order of prefix
- results: Results from notebooks
	- plots: Plots for manuscript
- R: R code used across notebooks


## Dependencies
The following R pacakges are required to run the notebooks

### From CRAN

- RColorBrewer
- corrr
- dplyr
- ggbeeswarm
- ggplot2
- ggrepel
- here
- pheatmap
- tidyr

### From Bioconductor
- biobroom

### From Github
- camprotR - `remotes::install_github("CambridgeCentreForProteomics/camprotR", dependencies = TRUE)`
