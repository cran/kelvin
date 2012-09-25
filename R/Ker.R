#' Wrapper function to return Ker
#' 
#' Uses \code{\link{Keir}} and extracts real component, i.e. 'Ker'
#' 
#' @param ... arguments passed to \code{\link{Keir}}
#' 
#' @author Andrew Barbour <andy.barbour@@gmail.com>
#' 
#' @references \url{http://mathworld.wolfram.com/Ker.html}
#' 
#' @seealso \code{\link{Keir}}, \code{\link{Kei}}
#' 
#' @export
#' 
#' @examples
#' Ker(1:10)
Ker <-
function(...) Keir(..., return.list=TRUE)$ker
#
