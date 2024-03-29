% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/IPMgrowth.R
\name{growth}
\alias{growth}
\title{Growth Function}
\usage{
growth(x1, x0, growthInt, growthSlope, growthSD)
}
\arguments{
\item{x1}{vector of individuals of state variable x (e.g., size) at time = t + 1 (new individuals at time t + 1)}

\item{x0}{vector of individuals of state variable x (e.g., size) at time = t + 0 (new individuals at time t + 0)}

\item{growthInt}{intercept of linear growth function}

\item{growthSlope}{slope of linear growth function}

\item{growthSD}{standard deviation of linear growth function}
}
\value{
probability of growing for each individual of state variable x
}
\description{
This function evaluates the conditional probability of growing for every individual
of state x from time = t + 0 to time = t + 1
}
