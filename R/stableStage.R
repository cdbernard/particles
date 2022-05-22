#' Stable Stage Distribution
#'
#' Calculates SSD from the 
#' 
#' @param A Integral Population Model
#' 
#' @return stable stage distribution
#' @export
#' 

stableStage <- function(A){
    ev <- eigen(A)
    lmax <- which.max(Re(ev$values))
    W <- ev$vectors
    w <- abs(Re(W[, lmax]))
    names(w) <- colnames(A)
    w/sum(w)
}
  