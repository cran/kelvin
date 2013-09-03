#
.onAttach <- function(...) { 
  packageStartupMessage(
    sprintf("Loaded kelvin (%s) -- Solutions to the Kelvin differential equation.",
            utils::packageVersion("kelvin")))
}
# CRAN check (3.0.0):
# * checking R code for possible problems ... NOTE
# NB: .Last.lib will not be used unless it is exported
# .Last.lib <- function(...){
#   NULL
# }
#
# 4-Sep-13:  
# Prof Brian Ripley <ripley@stats.ox.ac.uk>
#   10:44 PM (11 hours ago)
# 
# to me, CRAN 
# 
# Checking with R-devel (see the policies) says
# 
# * checking dependencies in R code ... NOTE
# ‘:::’ call which should be ‘::’: ‘utils:::packageVersion’
# See the note in ?`:::` about the use of this operator.
# 
# Please fix.