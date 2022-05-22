#' Parameter Reshaping for Kernel Generation
#'
#' This function transforms the parameter dataframe into a list to be used
#' in the function to generate Kernels.
#' 
#' 
#' @param paramDataframe Dataframe parameter
#' 
#' @return List of parameters
#' @export
#' 

IPMparameters <- function(param.dataframe){
  
  parameter <- list()
  
  for(i in 1:length(param.dataframe[,1])){
    parameter[[i]] <- param.dataframe[i,]
  }
  
  names(parameter) <- rownames(param.dataframe)
  
  return(parameter)
}
