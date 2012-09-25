#' Solutions to the Kelvin differential equations: 'Bei' and 'Ber'
#'
#' This function calculates the complex solution to the Kelvin differential
#' equations using modified Bessel function of the first kind, specifically
#' that which is produced by
#' \code{Bessel::BesselJ}.
#'
#' @param xseq vector; values to evaluate the complex solution at
#' @param nu. scalar; value of \eqn{\nu} in \eqn{\mathcal{B}_\nu}{Bei, and Ber}
#' @param return.list boolean; Should the result be a list instead of matrix?
#' @param ... arguments passed to \code{Bessel::BesselJ}
#' 
#' @export
#' @name Beir
#'
#' @return If \code{return.list==FALSE} (default),
#' a complex matrix with as many columns as using \code{nSeq.} creates.
#' Otherwise the result is a list with matrices for
#' Real and Imaginary components.
#' 
#' @author Andrew Barbour <andy.barbour@@gmail.com>
#' 
#' @references \url{http://mathworld.wolfram.com/KelvinFunctions.html}
#' 
#' @keywords "Orthogonal functions", "Kelvin functions"
#' 
#' @seealso \code{\link{Ber}}, \code{\link{Bei}}, \code{\link{Keir}}
#' 
#' @examples
#' Beir(1:10)    # defaults to nu.=0
#' Beir(1:10, nu.=2)
Beir <- function(xseq, nu.=0, return.list=FALSE, ...) UseMethod("Beir")

#' @return \code{NULL}
#' @rdname Beir
#' @docType methods
#' @method Beir default
#' @S3method Beir default
Beir.default <- function(xseq, nu.=0, return.list=FALSE, ...){
  require(Bessel)
  toret <- Bessel::BesselJ(xseq*exp(3*pi*(1i)/4), nu=nu., ...)
  #toret <- BesselJ(xseq*exp(3*pi*(1i)/4), nu=nu., ...)
  if (return.list){
    toret <- list(bei=Im(toret), ber=Re(toret))
  }
  return(toret)
}