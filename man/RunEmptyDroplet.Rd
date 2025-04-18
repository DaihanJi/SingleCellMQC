% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Cell_QC.R
\name{RunEmptyDroplet}
\alias{RunEmptyDroplet}
\title{Run empty droplet identification}
\usage{
RunEmptyDroplet(dir_name = NULL, lower = 100, FDR = 0.01)
}
\arguments{
\item{dir_name}{Character. The path to the directory containing 10X count data.}

\item{lower}{Numeric. The lower UMI count threshold to consider a droplet as non-empty. Default is 100.}

\item{FDR}{Numeric. The false discovery rate threshold for identifying retained droplets. Default is 0.01.}
}
\value{
A SingleCellExperiment object containing only the retained droplets that passed the thresholding criteria.
}
\description{
This function identifies empty droplets from single-cell RNA-seq data using the DropletUtils package.
}
\details{
The NA value represents an empty droplet with count < 100, which can be customized with the \code{lower} parameter.
FDR > 0.05 is considered to be the captured droplet.
}
