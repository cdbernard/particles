#' IPMmesh
#'
#' This function defines the meshpoints of the IPM (grid resolution). Matrix of n x n at which
#' transition values are evaluated for each of the vital rate regression functions. Requires 
#' IPM boundaries.
#' 
#' @param IPMboundary 2-D vector or list of minimum and maximum values for the IPM
#' @param meshResoution Resolution of the IPM (number of grid-/mesh points across the domain)
#' 
#' @return Vector of midpoints. n of the n x n matrix for which t -> t + 1 transitions will be evaluated.
#' @export
#' @examples
#' IPMmesh(IPMboundary(minValue = 2, maxValue = 8, jointBuffer = 0.2), 100)

IPMmesh <- function(IPM.boundary, mesh.resoution){
  
  min <- IPM.boundary[1]
  max <- IPM.boundary[2]
  
  if(is.list(IPM.boundary)){
    min <- IPM.boundary[[1]]
    max <- IPM.boundary[[2]]
  }
  
  res <- mesh.resoution
  grid_Vector <- min+c(0:res)*(max-min)/res # Pre-grid (1-D) - evenly spaced values between max & min
  mid_Points <- 0.5*(grid_Vector[1:res]+grid_Vector[2:(res+1)]) # (1-D) Midpoints of gridVector
  griddy_Mcgridface <- mid_Points
  
  return(griddy_Mcgridface)
}