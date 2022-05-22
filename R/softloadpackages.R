#' Install Packages that are not already installed
#'
#' This function loads any packages that are not already installed in one's files
#' @param packageName name of package
#' @export
#' @examples
#' softloadpackages(dplyr)


softloadPackages <- function(packagename){    # Load packages in library and install missing packages from CRAN
  if(!require(packagename, character.only = TRUE)){  # If packages are not yet installed, install them from CRAN
    install.packages(packagename, repos='http://cran.us.r-project.org')   # Search CRAN directory for uninstalled packages
  }
  require(packagename, character.only = TRUE) # Load all packages from library once they are installed
}