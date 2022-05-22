#' iSample - Convenience function implementing the Sample Importance Resampling procedure 
#'
#' This function is the core.
#' 
#' @param param.dataframe dataframe with columns of parameters and rows of samples/particles
#' @param discretisation.par number of bins into which is discretised
#' @param domain.filter domain filter
#' @param dilation.parameter dilation of the surface for contrasting
#' 
#' @return Based on the performance of the preceding step, evalute
#' @export
#' 

iSample <- function(param.dataframe,
                    discretisation.par,
                    domain.filter,
                    dilation.parameter){
  
  prob_Surface <- multiSurface(perf.dataframe = param.dataframe,
                               div = discretisation.par)
  
  new_Domain <- subDomain(surface.object = prob_Surface,
                          cut.threshold = domain.filter)
  
  new_Sample <- sirSampling(new_Domain,
                            dilation.parameter)
  
  return(new_Sample)
}
