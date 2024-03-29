% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/IPMsurvival.R
\name{survival}
\alias{survival}
\title{Survival Function}
\usage{
survival(x0, survInt, survSlope)
}
\arguments{
\item{x0}{vector of sizes at time = t (i.e., t0 / initial time-step)}

\item{survInt}{slope parameter of an exponential function}
}
\value{
value of survival at each point in the size-class vector
}
\description{
This function describes the relationship of survival to the state variable (size in default)
}
