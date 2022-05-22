#' Entropy of Dispersion
#'
#' This measurement of entropy estimates the dispersion of a vector - describing
#' the relative concentration of a vector's frequency into a number of age-classes
#' 
#' @param frequency Frequency vector (can be raw counts/goodness of fit values)
#' 
#' @return Entropy/Concentration measure
#' @export
#' @examples
#' entropy(c(1,0,0,0,0))
#' entropy(c(0.5, 0.5, 0.5, 0.5, 0.5))
#' entropy(c(0.95, 0.75, 0.55, 0.35, 0.15))
#' entropy(c(0.15, 0.35, 0.55, 0.75, 0.95))
#' 


entropy <- function(frequency){
  f <- frequency/sum(frequency)
  sumFreq <- list()
  for(i in 1:length(f)){
    sumFreq[[i]] <- f[i]*log(1/f[i])
    if(is.na(sumFreq[[i]])){sumFreq[[i]] <- 0}
    }
  H <- sum(unlist(sumFreq))
  return(H)
}
