#' Size of the Domain of the Parameter Provided
#'
#' Size of the domain of a parameter
#' 
#' 
#' @param surface.x x-values/state variables from the aggregate surface
#' 
#' @return Size of Domain
#' @export
#' 

domainSize <- function(surface.x){
  return(abs(range(surface.x)[[1]] - range(surface.x)[[2]]))
}
