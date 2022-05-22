#' Initiating Particle Distribution
#'
#' Defines the initial distribution of particles to be evaluated
#' 
#' @param parX parameter
#' 
#' @return List containing
#' @export
#' 


initiateSMC <- function(model.parameters, particle.number){
  
  parameterEval <- data.frame(matrix(NA, nrow=particle.number, ncol=length(model.parameters)))
  
  for(i in 1:length(model.parameters)){
    parameterEval[,i] <- model.parameters[[i]]$prior(particle.number)
  }
  
  return(parameterEval)
}
