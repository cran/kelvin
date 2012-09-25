#' Wrapper function to return Bei
#' 
#' Uses \code{\link{Beir}} and extracts imaginary component, i.e. 'Bei'
#' 
#' @param ... arguments passed to \code{\link{Beir}}
#' 
#' @author Andrew Barbour <andy.barbour@@gmail.com>
#' 
#' @references \url{http://mathworld.wolfram.com/Bei.html}
#' 
#' @seealso \code{\link{Beir}}, \code{\link{Ber}}
#' 
#' @export
#' 
#' @examples
#' Bei(1:10)
Bei <-
function(...) Beir(..., return.list=TRUE)$bei
#
