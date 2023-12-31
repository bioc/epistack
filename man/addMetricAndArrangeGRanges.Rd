% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/addMetricAndArrangeGRanges.R
\name{addMetricAndArrangeGRanges}
\alias{addMetricAndArrangeGRanges}
\title{addMetricAndArrangeGRanges()}
\usage{
addMetricAndArrangeGRanges(
  gr,
  order,
  gr_key = "name",
  order_key = "name",
  order_value = "exp",
  shuffle_tie = TRUE
)
}
\arguments{
\item{gr}{a GRanges object.}

\item{order}{a data.frame with at least two columns: keys and values.}

\item{gr_key}{name of the gr metadata column containing unique names for
each genomic region in \code{gr}. Usually gene names/id or peak id.}

\item{order_key}{name of the \code{order} column
that will be used as key for the inner join.}

\item{order_value}{name of the \code{order} column
that contain value used for sorting.}

\item{shuffle_tie}{a boolean Value (TRUE / FALSE).
When TRUE, shuffle the GRanges before sorting, mixing the ties.}
}
\value{
a GRanges sorted in descending order.
}
\description{
Perform an inner join between a GRanges object and a data.frame. Sort
the resulting GRanges based on a metric column.
}
\details{
This utility function allow the addition of a metric column to
genomic regions of interest. One of its common use case is to add
gene expression values on a set of transcription start sites.
The resulting GRanges object will only contain regions presents in both
\code{gr} and \code{order}.
}
\examples{
data("stackepi_gr")
ramdomOrder <- data.frame(gene_id = stackepi_gr$gene_id,
   value = rnorm(length(stackepi_gr)))
addMetricAndArrangeGRanges(stackepi_gr,
   ramdomOrder, gr_key = "gene_id",
   order_key = "gene_id", order_value = "value")


}
