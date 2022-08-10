#' Dispersion
#'
#' Redistributing the directly resampled points within the discretised interval
#' 
#' 
#' @param sample Resampled values from sirSampling
#' @param weighting Dilation parameter that increases the rate
#' 
#' @return Parameter samples
#' @export
#' 

dispersion <- function(sample, limDataframe){
  sampleDispersed <- list()
  for(i in 1:length(limDataframe)){
    binWidth <- limDataframe[[i]]$parameters[2]-limDataframe[[i]]$parameters[1]
    halfWidth <- binWidth/2
    sampleDispersed[[i]] <- runif(particleNumber,
                                  sample[[i]]-halfWidth,
                                  sample[[i]]+halfWidth)
    names(sampleDispersed)[[i]] <- paste("param", i, sep = "")
  }
  return(sampleDispersed)
}
