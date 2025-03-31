# MaternalIntestineXenium
Scripts for analysis of Xenium data presented in "Growth of the maternal intestine during reproduction" paper (Ameku et al., 2025), https://doi.org/10.1016/j.cell.2025.02.015

## R scripts
seurat_utility_functions.R - functions to facilitate analysis in Seurat.

## R notebooks
1. write_nuclei_count_matrices.Rmd - R notebook to process the raw transcript file and to get counts per nucleus.

2. main_analysis.Rmd - R notebook for main analysis - dimensionality reduction, clustering, detection of markers, visualisation on tissue (Figs 4F, 4G, S2B, S2C, S2C', S2E, 5H).

3. run_DE.Rmd - R notebook for running pseudobulk DE on epithelial clusters using DEseq2 (Figs S2D, S2D', 5I).

4. analyse_cell_type_proportions.Rmd - R notebook to analyse cell type proportions using Propeller (Fig 4F).

5. analyse_Slc5a5a_proportions.Rmd - R notebook to analyse proportions of cells that are positive for Slc5a5a using Propeller (Fig 5J).

6. analyse_cell_size.RMD - R notebook to analyse cell size (Fig S2I).

## Python notebooks
Create zoomed in plots of segmentation coloured by cluster over image (Fig 4E).
- segmentation_plot_TA2.ipynb 
- segmentation_plot_TA10.ipynb 
- segmentation_plot_TA12.ipynb 

## Docker images 
Scripts were run using the docker images annaladdach/seurat_v5_docker:lme4 and annaladdach/spatial_python:latest and 64 GB RAM (Francis Crick HPC system).
