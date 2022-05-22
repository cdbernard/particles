#' Inverse Jensen-Shannon Divergence
#'
#' Jensen-Shannon Divergence (JSD) offers an unbiased, symmetric distance measure between two
#' statistical distribution. When distributions are identical JSD = 0. When distributions differ
#' JSD increases with no theoretical ceiling - similar to Shannon entropy.
#' 
#' @param x0 reference st/age distribution (i.e., true st/age distribution)
#' @param x1 observed st/age distribution 
#' 
#' @return Jensen Shannon Distance/goodness of fit measure
#' @export
#' 

ShannonDistance <- function(x, y){
  1/(sqrt(abs(0.5*(sum(x*log(x /((x+y)/2))) + sum(y*log(y/((x+y)/2)))))))
}
