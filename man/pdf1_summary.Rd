% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pdf1_summary.R
\name{pdf1_summary}
\alias{pdf1_summary}
\title{pdf1_summary()}
\usage{
pdf1_summary(obj, na_rm = TRUE)
}
\arguments{
\item{obj}{Object used to create the table.

\code{data.frame}, \code{list} or environment
(or object coercible by \code{as.data.frame} to a \code{data.frame})}

\item{na_rm}{option to remove \code{NA} from variables}
}
\description{
In the base R we have the function summary, but the output is no by default
a data.frame, so pdf1_summary is a rewrite
}
\examples{
mtcars |>
  mypdf1::pdf1_summary()

airquality |> mypdf1::pdf1_summary(na_rm = FALSE)

iris |> mypdf1::pdf1_summary()
}
