% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Pipeline.R
\name{StepBPPCAToCluster}
\alias{StepBPPCAToCluster}
\title{Perform clustering on PCA results using BPCells}
\usage{
StepBPPCAToCluster(
  object,
  assay = "RNA",
  pca_name = "rna.pca",
  output_cluster_name = "rna_cluster",
  threads = 1,
  resolution = 1,
  min_val = 0.05,
  dims = 1:20
)
}
\arguments{
\item{object}{A Seurat object or PCA matrix.}

\item{assay}{The Seurat assay to use (default: "RNA").}

\item{pca_name}{Name of the PCA object (default: "rna.pca").}

\item{output_cluster_name}{Name of the cluster output (default: "rna_cluster").}

\item{threads}{Number of threads to use (default: 1).}

\item{resolution}{Clustering resolution (default: 1).}

\item{min_val}{Minimum value for SNN graph (default: 0.05).}

\item{dims}{Dimensions to use for clustering (default: 1:20).}
}
\value{
A Seurat object with clustering results or a cluster data.frame.
}
\description{
Perform clustering on PCA results using BPCells.
}
