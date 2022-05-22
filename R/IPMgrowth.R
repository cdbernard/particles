#' Growth Function
#'
#' This function evaluates the conditional probability of growing for every individual 
#' of state x from time = t + 0 to time = t + 1
#' 
#' 
#' @param x0 vector of individuals of state variable x (e.g., size) at time = t + 0 (new individuals at time t + 0)
#' @param x1 vector of individuals of state variable x (e.g., size) at time = t + 1 (new individuals at time t + 1)
#' @param growthInt intercept of linear growth function
#' @param growthSlope slope of linear growth function
#' @param growthSD standard deviation of linear growth function
#' 
#' @return probability of growing for each individual of state variable x
#' @export
#' 

growth <- function(x1,
                   x0,
                   growthInt,
                   growthSlope,
                   growthSD){
  growthProb <- dnorm(x1,
                      mean = growthInt + growthSlope*x0,
                      sd = growthSD)
  return(growthProb)
}
