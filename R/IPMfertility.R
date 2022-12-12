#' Fertility Function
#'
#' This function describes the conditional size distribution of new offspring
#' (i.e., offspring born at time time = t when observed at time = t+1)
#' 
#' @param x0 vector of individuals of state variable x (e.g., size) at time = t + 0 (new individuals at time t + 0)
#' @param fertInt intercept parameter of an exponential function
#' @param fertSlope slope parameter of an exponential function
#' 
#' @return probability of reproducing for each individual of state variable x
#' @export


fertility <- function(z,
                      fertInt,
                      fertSlope){ # Could be linear or logistic
  u <- fertInt + x0*fertSlope
  rawFertility <- u
  rawFertility[which(rawFertility>1)] <- 1
  posOnlyFertility <- dunif(rawFertility, min = 0, max = 1) * (1/dunif(rawFertility, min = 0, max = 1))
  truncateFertility <- rawFertility*posOnlyFertility
  truncateFertility[is.na(truncateFertility)] <- 0
  return(truncateFertility)
}
