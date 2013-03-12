#
.onAttach <- function(...) { 
  packageStartupMessage(
    sprintf("Loaded kelvin (%s) -- Solutions to the Kelvin differential equation.",
            utils:::packageVersion("kelvin")))
}
# CRAN check (3.0.0):
# * checking R code for possible problems ... NOTE
# NB: .Last.lib will not be used unless it is exported
# .Last.lib <- function(...){
#   NULL
# }