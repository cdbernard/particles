% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generateIPM.R
\name{generateIPM}
\alias{generateIPM}
\title{Generate IPM}
\usage{
generateIPM(IPM.parameters, ...)
}
\arguments{
\item{...}{List of missing parameters from dataframe to generate IPM Kernel}

\item{IPMparameters}{List of known parameters with missing parameters coded NA - see function smc::IPMparameters() for generating list from paramDataframe}
}
\value{
Integral population model K-Kernel (matrix of reproductive and transition probabilities)
}
\description{
This function defines the performance measure evaluated over an interval defined by the
mid-point interval approximattion
}
