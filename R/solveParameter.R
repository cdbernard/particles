#' Generate a list with the parameter name and prior
#'
#' This function creates a list containing the parameter name and a placehold for a file
#' 
#' @param paramName IPM parameter to be solved
#' 
#' @return List with the IPM parameter name attached to a prior
#' @export
#' 

solveParameter <- function(paramName){
  newParameter <- list()
  newParameter$paramName <- paramName
  newParameter$prior <- NA
  return(newParameter)
}