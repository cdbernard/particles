#' true Parameter
#'
#' This function extracts the parameter values for the parameter names
#' 
#' @param param.name name(s) of the parameter(s) to be removed (atomic or vector )
#' @param param.dataframe dataframe containing the full set of parameters
#' 
#' @return dataframe with the name and value of the values that have been knocked out of the IPM
#' @export
#' @examples
#' 

trueParameter <- function(param.name, param.dataframe){
  true.Param <- data.frame(param.dataframe[,1][match(param.name, rownames(param.dataframe))])
  rownames(true.Param) <- param.name
  colnames(true.Param) <- "true values"
  return(true.Param)
}