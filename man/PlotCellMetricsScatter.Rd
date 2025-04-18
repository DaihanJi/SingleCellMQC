% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PlotCell.R
\name{PlotCellMetricsScatter}
\alias{PlotCellMetricsScatter}
\title{Plot cell metrics with scatter plots}
\usage{
PlotCellMetricsScatter(
  object,
  group.by = NULL,
  metrics.by = NULL,
  split.by = NULL,
  color = NULL,
  ggside = T,
  log.x = F,
  log.y = F,
  log.z = F,
  raster.cutoff = 1e+05,
  size = 0.3,
  size.raster = 1,
  ticks = NULL
)
}
\arguments{
\item{object}{A Seurat object or a data frame. If a Seurat object is provided, the metadata containing the cell metrics will be extracted.}

\item{group.by}{Optional. Character string specifying the column name in the metadata to group cells by (e.g., \code{"cluster"} or \code{"cell_type"}). If specified, points in the scatter plot will be colored by the group.}

\item{metrics.by}{Character vector specifying the metrics to plot. Must contain either 2 or 3 metrics for generating 2D or 3D scatter plots, respectively.}

\item{split.by}{Optional. Character string specifying the column in the metadata to split the data by (e.g., \code{"orig.ident"} to visualize separately for each sample). If \code{NULL}, all cells are considered together. Default is \code{NULL}.}

\item{color}{Optional. A vector of colors to use for distinguishing groups in the scatter plot. If \code{NULL}, default colors are generated.}

\item{ggside}{Logical. If \code{TRUE}, includes marginal density plots (side plots) in the scatter plot for 2D visualizations. Default is \code{TRUE}.}

\item{log.x}{Logical. If \code{TRUE}, the x-axis will be log-transformed. Default is \code{FALSE}.}

\item{log.y}{Logical. If \code{TRUE}, the y-axis will be log-transformed. Default is \code{FALSE}.}

\item{log.z}{Logical. If \code{TRUE}, the z-axis will be log-transformed for 3D plots. Default is \code{FALSE}.}

\item{raster.cutoff}{Numeric value specifying the threshold for the number of points at which rasterization should occur, which can improve rendering performance for large datasets. Default is \code{100000}.}

\item{size}{Numeric value indicating the size of the points in the scatter plot for non-rasterized data. Default is \code{0.3}.}

\item{size.raster}{Numeric value indicating the size of the points in the scatter plot when rasterized. Default is \code{1}.}

\item{ticks}{Optional. Specifies the tick positions for the axes in the 3D plot. Default is \code{NULL}.}
}
\value{
A list of \code{ggplot} or \code{plotly} plot objects if \code{split.by} is specified; otherwise, a single plot object showing the relationships between the specified metrics.
}
\description{
This function generates scatter plots to visualize the relationships between selected quality control metrics for cells in a Seurat object.
The function supports both 2D and 3D scatter plots.
}
