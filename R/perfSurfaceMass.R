#' Aggregate Performance Surface
#'
#' This function takes teh 
#' 
#' @param perf.dataframe dataframe containing the parameters and performance
#' @param div number of divisions into which performance is grouped/pooled
#' 
#' @return List containing the x and y value surfaces for each parameter
#' @export
#' 


multiSurface <- function(perf.dataframe, div){
  surfaceCatch <- list()
  xy_list <- list()
  
  for(i in 1:(length(perf.dataframe[1,])-1)){
    for(k in 1:2){
      if(k == 1){
        xy_list[[k]] <- perfSurfaceX(min(perf.dataframe[,i]),
                                     max(perf.dataframe[,i]),
                                     divisions = div)
      }else if(k == 2){
        xy_list[[k]] <- perfSurfaceY(perf.dataframe[,i],
                                     perf.dataframe[,length(perf.dataframe)],
                                     div,
                                     min(perf.dataframe[,i]),
                                     max(perf.dataframe[,i]))
      }
    }
    names(xy_list) <- c("parameter", "fit")
    surfaceCatch[[i]] <- xy_list
    names(surfaceCatch)[[i]] <- c(paste("par", i, sep = ""))
  }
  return(surfaceCatch)
}
