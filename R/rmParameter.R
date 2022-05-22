#' Remove Parameter
#'
#' This function removes an existing parameter from  an existing IPM parameter dataframe
#' so that it can be solved using the inverse modeling framework. Not applicable to all cases.
#' 
#' @param param.name name(s) of the parameter(s) to be removed (atomic or vector )
#' @param param.dataframe dataframe into which the parameter is to be inserted
#' 
#' @return parameter dataframe with the relevant parameters replaced with NA
#' @export
#' @examples
#' 

rmParameter <- function(param.name, param.dataframe){
  for(i in 1:length(param.name)){
    param.dataframe[,1][which(rownames(param.dataframe)==param.name[[i]])] <- NA
    }
  return(param.dataframe)
}
