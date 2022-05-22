#' Performance Scaffold - Y-Values
#'
#' This function defines the performance measure evaluated over an interval defined by the
#' mid-point interval approximattion
#' 
#' @param par parameter value of the sample/particle
#' @param fit performance of the sample/particle
#' @param divisions number of divisions to bin into
#' @param min min parameter value to be evaluated
#' @param max max parameter value to be evaluated
#' 
#' @return x-values at the mid-points of each bins for which performance is maximised
#' @export
#' 

perfPurturb <- function(par, fit, divisions, min, max){ # Note warning suppression below
  maxValue <- list()
  maxRealX <- list()
  intervalValues <- discreteParameters(par, divisions, min, max)
  
  for(i in 1:divisions){
    suppressWarnings(tryCatch(
      if(maxValue[[i]] <- max(fit[match(intervalValues[[i]],par)]))# try to extract the maximum interval value},
        error = function(e) {print(paste(NA))}
    ))
    suppressWarnings(tryCatch(
      if(maxRealX[[i]] <- which(par == max(fit[match(intervalValues[[i]],par)])))# try to extract the maximum interval value},
        error = function(e) {print(paste(NA))}
    ))
    suppressWarnings(tryCatch(
      if(is.na(maxValue[[i]])){maxValue[[i]] <- 0},  # Ensure non-NA value in max (e.g., no value in int.) - coerce 0
      error = function(e) {print(paste(NA))} 
    ))
    suppressWarnings(tryCatch(
      if(!is.finite(maxValue[[i]])){maxValue[[i]] <- 0}, # Ensure finite value (e.g., if perfect fit) - coerce 0
      error = function(e) {print(paste(NA))}
    ))
  }
  return(list(unlist(maxValue), unlist(maxRealX)))
}


