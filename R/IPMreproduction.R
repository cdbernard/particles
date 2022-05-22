#' Reproductive Function
#'
#' This function evaluates (1) the state-specific fertility; (2) recruitment; (3) dispersion of new individuals.
#' 
#' 
#' @param x0 vector of individuals of state variable x (e.g., size) at time = t + 0 (new individuals at time t + 0)
#' @param x1 vector of individuals of state variable x (e.g., size) at time = t + 1 (new individuals at time t + 1)
#' @param establishment probability of establishment
#' @param recruitMean mean of the state variable (e.g., size) of new individuals recruited into the population at time t+1
#' @param recruitSD sd of the state variable (e.g., size) of new individuals recruited into the population at time t+1
#' @param fertInt intercept parameter of an exponential function
#' @param fertSlope slope parameter of an exponential function
#' 
#' @return probability of reproducing for each individual of state variable x
#' @export
#' 

reproduction <- function(x1,
                         x0,
                         estabProbability,
                         recruitMean,
                         recruitSD,
                         fertInt,
                         fertSlope){
  establishment(estabProbability)*
  conditionalSize(x1, recruitMean, recruitSD)*
  fertility(x0, fertInt, fertSlope)
}