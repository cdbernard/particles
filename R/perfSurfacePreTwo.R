#' Performance Scaffold prerequisite functions
#'
#' This function returns all of the parameter state values packaged into discrete intervals
#' for subsequently evaluating fit to generate the performance surface
#' 
#' @param par parameter state values (not performance/goodness of fit values)
#' @param divisions number of divisions into which the parameter space is discretised
#' @param min minimum parameter value in the domain
#' @param max maximum parameter value in the domain
#' 
#' @return the identity of parameter state values in discrete bins
#' @export
#'

discreteParameters <- function(par, divisions, min , max){
  bins <- list()
  for(position in 1:divisions){ bins[[position]] <- interval(par, divisions, position, min, max) }
  return(bins)
}
