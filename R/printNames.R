#' Printing parameter names
#'
#' Prints the parameter names for quick reference
#' 
#' @param default NULL
#' 
#' @return List of parameters
#' @export
#' 

printNames <- function(default = NULL){
  print(paste("survInt"))
  print(paste("survSlope"))
  print(paste("establishment"))
  print(paste("recruitMean"))
  print(paste("recruitSD"))
  print(paste("fertInt"))
  print(paste("fertSlope"))
  print(paste("growthInt"))
  print(paste("growthSlope"))
  print(paste("growthSD"))
}
