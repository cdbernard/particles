#' iterationStat
#'
#' This function updates the progress and estimated timeframe for the SMC
#' 
#' @param iteration Looping variable (e.g., i in for(i in 1:100))
#' @param totalLength Total length of the iteration run
#' 
#' @return Printed status update at a density of every fifth of the total progression.
#' @export
#' 

iterationStat <- function(iteration, totalLength){
  ref_bar <- seq(0, totalLength, by = totalLength/5)[-1]
  if(length(which(ref_bar == i)) > 0){print(paste("iteration", iteration, "|", 
                                                  (iteration/totalLength)*100, "% complete", "|",
                                                  "approx", round(10*(totalLength-iteration)/60, 2), "min to go"))}
}
