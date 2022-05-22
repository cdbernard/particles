#' Performance Scaffold
#'
#' This function defines the mid-point scaffolding across which the maximum performance
#' of a parameter value is assessed. 
#' 
#' @param min minimum domain value
#' @param max maximum domain value
#' @param divisions number of divisions to bin into
#' 
#' @return x-values at the mid-points of each bins for which performance is maximised
#' @export
#' 

perfSurfaceX <- function(min, max, divisions){
  baseInterval <- seq(min, max, length = divisions+1)
  abrevInterval <- baseInterval[-(divisions+1)]
  offset <- abrevInterval + (abrevInterval[2]-abrevInterval[1])/2
  surface.X <- offset
  return(surface.X)
}
