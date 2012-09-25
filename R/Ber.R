#' Wrapper function to return Ber
#' 
#' Uses \code{\link{Beir}} and extracts real component, i.e. 'Ber'
#' 
#' @param ... arguments passed to \code{\link{Beir}}
#' 
#' @author Andrew Barbour <andy.barbour@@gmail.com>
#' 
#' @references \url{http://mathworld.wolfram.com/Ber.html}
#' 
#' @seealso \code{\link{Beir}}, \code{\link{Bei}}
#' 
#' @export
#' 
#' @examples
#' Ber(1:10)
Ber <-
function(...) Beir(..., return.list=TRUE)$ber
#
