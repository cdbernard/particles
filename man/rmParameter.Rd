% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rmParameter.R
\name{rmParameter}
\alias{rmParameter}
\title{Remove Parameter}
\usage{
rmParameter(param.name, param.dataframe)
}
\arguments{
\item{param.name}{name(s) of the parameter(s) to be removed (atomic or vector )}

\item{param.dataframe}{dataframe into which the parameter is to be inserted}
}
\value{
parameter dataframe with the relevant parameters replaced with NA
}
\description{
This function removes an existing parameter from  an existing IPM parameter dataframe
so that it can be solved using the inverse modeling framework. Not applicable to all cases.
}
\examples{

}
