#' Default packages to run the smc
#'
#' @param default none
#' @export

smcDefaults <- function(default = NA){
  package_vec <- c( # vector of package names (CRAN only)
    "popbio",
    "scales",
    "pbapply",
    "Rage",
    "popdemo",
    "ggplot2",
    "gganimate",
    "gridExtra",
    "plotly",
    "tidyverse",
    "dplyr", 
    "viridis",
    "seewave",
    "npreg",
    "scales",
    "gtools",
    "crayon"
  )
  return(package_vec)
}
