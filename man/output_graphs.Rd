% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/output_graphs.R
\name{output_graphs}
\alias{output_graphs}
\alias{output_graph_io}
\alias{output_graph_boxplots}
\alias{output_graph_violinMean}
\alias{output_graph_histograms}
\alias{output_graph_boxplotsSideVar}
\alias{output_graph_capacity}
\alias{output_graph_densities}
\title{Plotting output of capacity estimation}
\usage{
output_graphs(data, signal, response, side_variables, cc_output, path,
  height = 4, width = 6)

output_graph_io(data, signal, response, path, height, width)

output_graph_boxplots(data, signal, response, path, height = 4, width = 6)

output_graph_violinMean(data, signal, response, path, height = 4, width = 6)

output_graph_histograms(data, signal, response, path, height = 4, width = 6)

output_graph_boxplotsSideVar(data, signal, side_variables, path, height = 4,
  width = 6)

output_graph_capacity(cc_output, path, height = 4, width = 6)

output_graph_densities(data, signal, response, path, height = 4, width = 6)
}
\arguments{
\item{data}{is a data.frame object}

\item{signal}{is a character object that indicates columns of data that should be treated as channel's input}

\item{response}{is a character vector that indicates columns of data that should be treated as channel's output}

\item{side_variables}{is a character vector that indicates side variables' columns of data}

\item{cc_output}{a list that is the output of capacity_logreg_algorithm function}

\item{path}{character giving the directory, where graphs should be saved}

\item{height}{integer indicating the height of a single plot}

\item{width}{integer indicating the width of a single plot}
}
\description{
INPUT:
}
\examples{


}
\keyword{data.frame}
\keyword{internal}
