#.onAttach <- function(...) { 
#packageStartupMessage("message from .onAttach via packageStartupMessage\n") 
#}
.onLoad <- function(...) { 
packageStartupMessage("\t>>>>\tkelvin\tSep 2012\t<<<<")
}
Kelvin <- function(...) UseMethod("Keir")
