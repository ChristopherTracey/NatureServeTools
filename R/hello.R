# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
  print("Hello, world!")
}

loadPython <- function(pypath){
  ##need to first install devtools packages and rtools
  if (!requireNamespace("RSQLite", quietly=TRUE)) install.packages("RSQLite")
  require(RSQLite)

  if (!requireNamespace("RSQLite", quietly=TRUE)) install.packages("RSQLite")
  require(RSQLite)

  install.packages("devtools")
  library(devtools)
  install_version("reticulate", version = "1.22", repos = "http://cran.us.r-project.org") ##older version required until package is updated to handle space in filepath name for python
  library(reticulate)
  reticulate::use_condaenv(condaenv='C:/ProgramFiles/ArcGIS/Pro/bin/Python/envs/arcgispro-py3', required = T)
  arcpy<-import("arcpy")
}



