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
  if (!requireNamespace("devtools", quietly=TRUE)) install.packages("devtools")
  require(devtools)

  if (!requireNamespace("reticulate", quietly=TRUE)) install.packages("reticulate", version = "1.22", repos = "http://cran.us.r-project.org")
  require(reticulate) ## older version required until package is updated to handle space in filepath name for python
  reticulate::use_condaenv(condaenv=pypath, required=T)
  arcpy <- import("arcpy")
}



