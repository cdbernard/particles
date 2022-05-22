#' Generate IPM
#'
#' This function defines the performance measure evaluated over an interval defined by the
#' mid-point interval approximattion
#' 
#' @param IPMparameters List of known parameters with missing parameters coded NA - see function smc::IPMparameters() for generating list from paramDataframe
#' @param ... List of missing parameters from dataframe to generate IPM Kernel
#' 
#' @return Integral population model K-Kernel (matrix of reproductive and transition probabilities)
#' @export
#' 

generateIPM <- function(IPM.parameters, ...){
  holdNewPars <- list(...)
  IPM.parameters[which(is.na(IPM.parameters))] <- unlist(holdNewPars)
  
  span <- t_0[2]-t_0[1]
  
  S.kernel <- survival(t_0,
                       IPM.parameters$survInt,
                       IPM.parameters$survSlope)
  
  F.kernel <- span*outer(t_0,
                         t_1,
                         reproduction,
                         estabProbability=IPM.parameters$establishment,
                         recruitMean=IPM.parameters$recruitMean,
                         recruitSD=IPM.parameters$recruitSD,
                         fertInt=IPM.parameters$fertInt,
                         fertSlope=IPM.parameters$fertSlope)
  
  G.kernel <- span*outer(t_0,
                         t_1,
                         growth,
                         growthInt=IPM.parameters$growthInt,
                         growthSlope=IPM.parameters$growthSlope,
                         growthSD=IPM.parameters$growthSD)
  
  P.kernel <- G.kernel
  
  for(i in 1:length(t_0)){P.kernel[,i]=G.kernel[,i]*S.kernel[i]}
  
  A.kernel <- P.kernel+F.kernel
  
  return(A.kernel)
}
