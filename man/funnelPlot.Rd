% Generated by roxygen2 (4.0.1): do not edit by hand
\name{funnelPlot}
\alias{funnelPlot}
\title{Funnel plot comparing institutional performance}
\usage{
funnelPlot(standardizedRisks, xValue = c("size", "precision"),
  confidenceLineColors = c("black", "red"), confidenceLineLty = c("dashed",
  "dotted"), ...)
}
\arguments{
\item{standardizedRisks}{standardized risk as computed by the standardizeRisks function}

\item{xValue}{value to be plotted on the x axis, one of 'size' or 'precision'}

\item{confidenceLineColors}{vector of length two; colors for the 95% and 99% confidence bounds; default value
is \code{c("black", "red")}}

\item{confidenceLineLty}{vector of length two; line types for the 95% and 99% confidence bounds; default value
is \code{c("solid", "solid")}}

\item{...}{further arguments passed to plot}
}
\value{
no return value; a plot is drawn on the current device
}
\description{
Funnel plot comparing institutional performance
}
\examples{
set.seed(130513)
simulatedData <- simulateData()
standardizedRisks <- with(simulatedData, standardizeRisks(patientCovariates = L, center = center, Y = Y))
funnelPlot(standardizedRisks = standardizedRisks)
}
\references{
Spiegelhalter, David J. (2005). Funnel plots for comparing institutional performance,
  Statistics in Medicine, 24(8), p. 1185--1202.
}
\seealso{
\link{standardizeRisks}
}

