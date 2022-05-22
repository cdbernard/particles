#' Performance Scaffold prerequisite functions
#'
#' This prerequisite function for the performance surface scaffolding
#' Associate sample/particles value with an individual parameter-value interval
#' 
#' @param par parameter state values (not performance/goodness of fit values)
#' @param divisions number of divisions into which the parameter space is discretised
#' @param position the rank-order integer of a parameter interval (see perfSurfacePreTwo)
#' @param min minimum parameter value in the domain
#' @param max maximum parameter value in the domain
#' 
#' @return the identity of parameter state values that fall into the specified interval
#' @export
#' 

# Associate sample/particles value with an individual parameter-value interval

interval <- function(par, divisions, position, min, max){
  r <- divisions+1
  return(par[which(par>seq(min, max, length=r)[position] & par<seq(min, max, length=r)[position+1])])
}
