#' Resampling function
#'
#' Sample Importance Resampling implementation function - Note the new dependency on 
#' dispersion() function to redistribute the samples after the raw aggregate point
#' recounting is completed.
#' 
#' 
#' @param resample.dataframe Dataframe of parameters on the restricted parameters
#' @param weighting Dilation parameter that increases the rate
#' 
#' @return New series of samples
#' @export
#' 


sirSampling <- function(resample.dataframe, resample.weight, particleNumber){
  
  preSample <- list()
  
  for(i in 1:length(resample.dataframe)){
    preSample[[i]] <- sample(resample.dataframe[[i]]$parameters,
                            particleNumber,
                            replace = TRUE,
                            prob = resample.dataframe[[i]]$fit^resample.weight)
    names(preSample)[[i]] <- paste("param", i, sep = "")
  }
  
  # Offsetting
  offsetValues <- dispersion(preSample, resample.dataframe)
  
  # Formatting for next round of evaluation
  newSamples <- data.frame(matrix(NA, nrow=1000, ncol=length(resample.dataframe)))
  
  for(i in 1:length(resample.dataframe)){
    newSamples[,i] <- offsetValues[[i]]
  }
  
  return(newSamples)
}
