% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iSample.R
\name{iSample}
\alias{iSample}
\title{iSample - Convenience function implementing the Sample Importance Resampling procedure}
\usage{
iSample(param.dataframe, discretisation.par, domain.filter, dilation.parameter)
}
\arguments{
\item{param.dataframe}{dataframe with columns of parameters and rows of samples/particles}

\item{discretisation.par}{number of bins into which is discretised}

\item{domain.filter}{domain filter}

\item{dilation.parameter}{dilation of the surface for contrasting}
}
\value{
Based on the performance of the preceding step, evalute
}
\description{
This function is the core.
}
