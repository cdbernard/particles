#' A working dataset for parameterisation
#'
#' 
#' @param dataframe blank dataframe
#' @export
#' @examples
#' softloadpackages(dplyr)


seriesA <- function(dataframe){
  dataframe <- addParameter("survInt", -3.965, dataframe) #-3.964604
  dataframe <- addParameter("survSlope", 0.500, dataframe) #0.50
  dataframe <- addParameter("establishment", 0.0198, dataframe) #0.01977457
  dataframe <- addParameter("recruitMean", 1.524, dataframe) #1.5243
  dataframe <- addParameter("recruitSD", 0.401, dataframe) #0.4013343
  dataframe <- addParameter("fertInt", 1.332, dataframe) #1.332341
  dataframe <- addParameter("fertSlope", 0.350, dataframe) # 0.35
  dataframe <- addParameter("growthInt", 2.681, dataframe) # 2.68135
  dataframe <- addParameter("growthSlope", 0.579, dataframe) #0.5792209
  dataframe <- addParameter("growthSD", 0.885, dataframe) #0.8849982
  return(dataframe)
}
