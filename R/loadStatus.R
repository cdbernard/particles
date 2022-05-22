#' Check whether packages were successfully installed
#'
#' Check if the packages were installed; flag any issues
#' @param loadingOutput output from sapply(packageNameVector, softloadpackages)
#' @export
#' @examples
#' softloadpackages(dplyr)


loadStatus <- function(x){ # Graphical symmary of the loading status of packages
  paste(cat(blue("LIBRARIES LOADED"), "\n"))
  for(i in 1:length(x)){
    if(x[[i]]==TRUE){
      paste(cat(green("\u2713"), "|", names(x)[[i]], "\n"))
    }
    if(x[[i]]==FALSE){
      cat(red("\u2717"), "|", names(x)[[i]], "\n")
      
    }
  }
  if(sum(x)==length(x)){paste(cat("exit status:", green("All Packages Loaded Successfully", "\n")))}
  if(sum(x)<length(x)){paste(cat("exit status:", red("Failed - Check Warnings", "\n")))}
}
