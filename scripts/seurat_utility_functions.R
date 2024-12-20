# Function to run seurat FindAllMarkers, save results to file and create dotplot.
getMarkers = function(seuratObj, name, dir, nmarkers = 5, height = 10, width = 20){
  markers = FindAllMarkers(seuratObj, only.pos = TRUE)
  markers %>%
    group_by(cluster) %>%
    dplyr::filter(avg_log2FC > 1)
    write.csv(markers, paste0(dir,name, "_markers.csv"))
  markers %>%
    group_by(cluster) %>%
    dplyr::filter(avg_log2FC > 1) %>%
    slice_head(n = nmarkers) %>%
    ungroup() -> top
  p = DotPlot(seuratObj, unique(top$gene))
  p = p + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
  print(p)
  ggsave(paste0(dir, name, "_marker_dotplot.pdf"), height = height, width = width)
  return(top)
}

# Function to run dimensionality and clustering on a subset of data.
analyseSubset = function(xenium.obj, clusters, npcs, resolution = 0.5){
  subset = xenium.obj[,xenium.obj@active.ident %in% clusters]
  subset= RunPCA(subset, npcs = npcs, features = rownames(subset))
  subset = RunUMAP(subset, dims = 1:npcs)
  subset = FindNeighbors(subset, reduction = "pca", dims = 1:npcs)
  subset = FindClusters(subset, resolution = resolution)
  return(subset)
}

