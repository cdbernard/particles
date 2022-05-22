#' GG formatting
#'
#' This function transforms the matrix formatting to be plotted as a heatmap in ggplot
#' 
#' 
#' @param x0 state variable at time = t + 0 (vector)
#' @param x1 state variable at time = t + 1 (vector)
#' @param outerMatrix matrix-formatted Kernel (U-, F-, or K-kernels)
#' 
#' @return dataframe that can be passed to ggplot to be plotted as a heatmaap
#' @export
#' 


ggFormat <- function(x0, x1, outerMatrix){
  vectorFrame <- expand.grid(x0, x1)
  vectorFrame[,3] <- c(t(outerMatrix))
  colnames(vectorFrame) <- c("x0", "x1", "kernel")
  return(vectorFrame)
}
