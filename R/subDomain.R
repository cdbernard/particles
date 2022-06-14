#' subDomain
#'
#' This function uses the threshold and surface object to limit the domain.
#' 
#' @param surface.object surface object from perfSurfaceMass
#' @param cut.threshold number of divisions into which performance is grouped/pooled
#' 
#' @return List containing the retricted parameter values and corresponding fit values
#' @export
#' 

subDomain <- function(surface.object, cut.threshold){
  restrict_Domain <- list()
  
  for(i in 1:length(surface.object)){
    limited_ParValues <- list()
    
    cutOff <- cutLimit(surface.x = surface.object[[i]]$parameter,
                       decay.seq = paramDecay(surface.object[[i]]$parameter,
                                              surface.object[[i]]$fit),
                       threshold = cut.threshold)
    
    if(cutOff > length(surface.object$par1$parameter)-2){cutOff <- length(surface.object$par1$parameter)-2}
    
    rmParValues <- match(sort(surface.object[[i]]$fit)[c(1:cutOff)],
                         surface.object[[i]]$fit)
    
    limited_ParValues[[1]] <- surface.object[[i]]$parameter[min(seq(1:length(surface.object[[i]]$parameter))[-rmParValues]):max(seq(1:length(surface.object[[i]]$parameter))[-rmParValues])]
    limited_ParValues[[2]] <- surface.object[[i]]$fit[min(seq(1:length(surface.object[[i]]$parameter))[-rmParValues]):max(seq(1:length(surface.object[[i]]$parameter))[-rmParValues])]
    
    names(limited_ParValues) <- c("parameters", "fit")
    restrict_Domain[[i]] <- limited_ParValues
    names(restrict_Domain)[[i]] <- c(paste("param", i, sep = ""))    
  }
  return(restrict_Domain)
}
