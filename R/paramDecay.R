#' Parameter Decay Rate
#'
#' Generates the sequence at which the domain changes as one eliminates
#' parameter/state surface (surface.x) data based on performance (surface.y).
#' Dependent upon domainSize() function.
#' 
#' @param surface.x Aggregate parameter state surface
#' @param surface.y Aggregate parameter state performance
#' 
#' @return List of the decay of the domain. Each value represents the domain size
#' after eliminating n-number of elements from the surface.x parameter space based
#' on the rank performance
#' @export
#' 

paramDecay <- function(surface.x, surface.y){
  domains <- list()
  for(j in 1:length(surface.x)){
    domains[[j]] <- domainSize(range(surface.x[rev(order(surface.y))][1:j]))
  }
  return(rev(unlist(domains)))
}
