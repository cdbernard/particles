#' Size of Offspring
#'
#' This function describes the conditional size distribution of new offspring
#' (i.e., offspring born at time time = t when observed at time = t+1)
#' 
#' @param x1 vector of individuals of state variable x (e.g., size) at time = t + 1 (new individuals at time t + 1)
#' @param recruitMean mean of the state variable (e.g., size) of new individuals recruited into the population at time t+1
#' @param recruitSD sd of the state variable (e.g., size) of new individuals recruited into the population at time t+1
#' 
#' @return probability of establishment/recruitment
#' @export


conditionalSize <- function(recruitment){
  recruitment <- recruitment
  return(recruitment)
}
