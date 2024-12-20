# MaternalIntestineXenium
Scripts for analysis of Xenium data presented in "Growth of the maternal intestine during reproduction" paper (Ameku et al.)

## R scripts
seurat_utility_functions.R - functions to facilitate analysis in Seurat.

## R notebooks
1. write_nuclei_count_matrices.Rmd - R notebook to process the raw transcript file and to get counts per nucleus.

2. main_analysis.Rmd - R notebook for main analysis - dimensionality reduction, clustering, detection of markers, visualisation on tissue.

3. run_DE.Rmd - R notebook for running pseudobulk DE on epithelial clusters using DEseq2

4. analyse_cell_type_proportions.Rmd - R notebook to analyse cell type proportions using Propeller

5. analyse_Slc5a5a_proportions.Rmd - R notebook to analyse proportions of cells that are positive for Slc5a5a using Propeller.

6. analyse_cell_size.RMD - R notebook to analyse cell size.

## Python notebooks
Create zoomed in plots of segmentation coloured by cluster over image.
- segmentation_plot_TA2.ipynb 
- segmentation_plot_TA10.ipynb 
- segmentation_plot_TA12.ipynb 

## Docker images 
Scripts were run using the docker images annaladdach/seurat_v5_docker:lme4 and annaladdach/spatial_python:latest and 64 GB RAM (Francis Crick HPC system).
