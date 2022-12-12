#' Survival Function
#'
#' This function describes the relationship of survival to the state variable (size in default)
#' 
#' @param x0 vector of sizes at time = t (i.e., t0 / initial time-step)
#' @param survInt intercept parameter of an exponential function
#' @param survInt slope parameter of an exponential function
#' 
#' @return value of survival at each point in the size-class vector
#' @export


survival <- function(x0, survInt, survSlope){
  rawSurvival <- u
  posOnlySurvival <- dunif(rawSurvival, min = 0, max = 1) * (1/dunif(rawSurvival, min = 0, max = 1))
  truncateSurvival <- rawSurvival*posOnlySurvival
  truncateSurvival[is.na(truncateSurvival)] <- 0
  return(truncateSurvival)
}
