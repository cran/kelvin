#' Wrapper function to return Kei
#' 
#' Uses \code{\link{Keir}} and extracts imaginary component, i.e. 'Kei'
#' 
#' @param ... arguments passed to \code{\link{Keir}}
#' 
#' @author Andrew Barbour <andy.barbour@@gmail.com>
#' 
#' @references \url{http://mathworld.wolfram.com/Kei.html}
#' 
#' @seealso \code{\link{Keir}}, \code{\link{Ker}}
#' 
#' @export
#' 
#' @examples
#' Kei(1:10)
Kei <-
function(...) Keir(..., return.list=TRUE)$kei
