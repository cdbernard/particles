#' Parameter File
#'
#' Identify the parameters to be solved for in the IPM
#' 
#' @param parX parameter list containing name and prior slot (output from solveParameter)
#' @param ... additional parameter lists to be compiled
#' 
#' @return List containing the names and priors for parameters to be solved
#' @export
#' 

modelParams <- function(parX, ...){
  otherPars <- list(...)
  mainPar <- list()
  mainPar[[1]] <- parX
  names(mainPar)[[1]] <- parX[[1]]
  if(length(otherPars)>0){
    for(i in 2:(length(otherPars)+1)){
      mainPar[[i]] <- otherPars[[i-1]]
      names(mainPar)[[i]] <- otherPars[[i-1]][[1]]
    }
  }
  return(mainPar)
}
