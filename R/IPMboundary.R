#' Define the boundaries of the IPM
#'
#' This function defines the limits of the Integral Population Model based on
#' The min/max values and optional buffer distance. Minimum and maximum values
#' can be based on empirical data using (min - or max(data, na.rm=TRUE)) or prescribed.
#' 
#' @param minValue minimum value
#' @param maxValue maximum value
#' @param jointBuffer percentage buffer applied to minimum and maximum values - bypasses min/max buffer
#' @param minBuffer percentage buffer applied to the minimum value
#' @param minDomain lower floor on potential values - bypasses the values and buffer
#' @param maxDomain upper ceiling on potential values - bypasses the values and buffer
#' 
#' @return Two dimensional boundary on the continuous variable of the integral population model
#' @export
#' @examples
#' IPMboundary(minValue = 2, maxValue = 8, jointBuffer = 0.2)
#' IPMboundary(minValue = 2, maxValue = 8, minBuffer = 0.2, maxBuffer = 0.05)
#' IPMboundary(minDomain = 1.5, maxDomain = 10)


IPMboundary <- function(minValue=NA,
                     maxValue=NA,
                     jointBuffer=NA,
                     minBuffer=NA,
                     maxBuffer=NA,
                     minDomain=NA,
                     maxDomain=NA){
  if(is.na(jointBuffer) & is.na(minBuffer) & is.na(maxBuffer) & is.na(minDomain) & is.na(maxDomain))
    stop("Must Specify Domain Buffer - either min- & maxBuffer, min- & maxDomain, or jointBuffer")
  if(!is.na(maxDomain) & !is.na(minDomain)){
    domains <- c(minDomain, maxDomain)
  }else if(!is.na(maxBuffer) & !is.na(minBuffer)){
    domains <- c(minValue*(1-minBuffer), maxValue*(1+maxBuffer))
  }else{
    domains <- c(minValue*(1-jointBuffer), maxValue*(1+jointBuffer))
  }
  if(!is.na(minDomain) | !is.na(maxDomain))
    warning("Specified domain is the exact limits. No buffer on the IPM integration.")
  return(domains)
}