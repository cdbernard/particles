#' addParameter
#'
#' This function inserts a new parameter value into an existing IPM parameter dataframe
#' using its name to locate the appropriate location for integration with the IPM.
#' 
#' @param param.name name of the parameter
#' @param value value of the parameter
#' @param param.dataframe dataframe into which the parameter is to be inserted
#' 
#' @return parameter dataframe with the inserted variable
#' @export
#' @examples
#' 

addParameter <- function(param.name, value, param.dataframe){
  param.dataframe[which(param.name==rownames(param.dataframe)),] <- value
  return(param.dataframe)
}