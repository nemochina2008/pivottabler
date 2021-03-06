% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quickPivot.R
\name{qhpvt}
\alias{qhpvt}
\title{Quickly render a basic pivot table in HTML.}
\usage{
qhpvt(dataFrame, rows = NULL, columns = NULL, calculations = NULL, ...)
}
\arguments{
\item{dataFrame}{The data frame containing the data to be summarised in the
pivot table.}

\item{rows}{A character vector of variable names to be plotted on the rows of
the pivot table, or "=" to specify the position of the calculations.}

\item{columns}{A character vector of variable names to be plotted on the
columns of the pivot table, or "=" to specify the position of the
calculations.}

\item{calculations}{One or more summary calculations to use to calculate the
values of the cells in the pivot table.}

\item{...}{Additional arguments, currently format, formats, totals and/or
argumentCheckMode.}
}
\value{
A HTML widget.
}
\description{
The \code{qhpvt} function renders a basic pivot table as a HTML widget with
one line of R.
}
\examples{
qhpvt(bhmtrains, "TOC", "TrainCategory", "n()")
qhpvt(bhmtrains, "TOC", "TrainCategory",
     c("Mean Speed"="mean(SchedSpeedMPH, na.rm=TRUE)",
       "Std Dev Speed"="sd(SchedSpeedMPH, na.rm=TRUE)"),
     formats=list("\%.0f", "\%.1f"),
     totals=list("TOC"="All TOCs",
       "TrainCategory"="All Categories"))
}
