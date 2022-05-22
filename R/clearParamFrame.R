#' Creates a new dataframe for IPM parameters
#'
#' Create a new dataframe for IPM parameters
#' 
#' @param default defaults to a 10-parameter dataframe - will be updated for generalisation later
#' 
#' @return Empty dataframe of parameters to be populated for each run of the IPM
#' @export
#' @examples
#' 


clearParamFrame <- function(default = NA){
  parameterSeries <- NA
  parameterSeries <- data.frame(matrix(NA, ncol=1, nrow=10))
  colnames(parameterSeries) <- "parameterValues"
  rownames(parameterSeries) <- c("survInt",
                                 "survSlope",
                                 "establishment",
                                 "recruitMean",
                                 "recruitSD",
                                 "fertInt",
                                 "fertSlope",
                                 "growthInt",
                                 "growthSlope",
                                 "growthSD")
  return(parameterSeries)
}
