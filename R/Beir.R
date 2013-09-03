#' Fundamental solution to the Kelvin differential equation: Bessel-J
#'
#' This function calculates the complex solution to the Kelvin differential
#' equation using modified Bessel functions of the first kind, specifically
#' those produced by \code{Bessel::BesselJ}.
#'
#' @details
#' \code{\link{Ber}} and \code{\link{Bei}} are wrapper functions
#' which return the real and imaginary components, respectively.
#' 
#' @param xseq vector; values to evaluate the complex solution at
#' @param nu. scalar; value of \eqn{\nu} in \eqn{\mathcal{B}_\nu}{Bei, and Ber}
#' @param return.list boolean; Should the result be a list instead of matrix?
#' @param ... additional arguments. In \code{\link{Beir}} they are
#' passed to \code{Bessel::BesselJ}, and in \code{\link{Ber}}, and \code{\link{Bei}}
#' they are passed to \code{\link{Beir}}.
#' 
#' @export
#' @name Beir
#'
#' @return If \code{return.list==FALSE} (the default),
#' a complex matrix with as many columns as using \code{nSeq.} creates.
#' Otherwise the result is a list with matrices for
#' Real and Imaginary components.
#' 
#' @author Andrew Barbour <andy.barbour@@gmail.com>
#' 
#' @references \url{http://mathworld.wolfram.com/KelvinFunctions.html}
#' @references Imaginary: \url{http://mathworld.wolfram.com/Bei.html}
#' @references Real: \url{http://mathworld.wolfram.com/Ber.html}
#' 
#' @family solutions
#' @seealso \code{\link{kelvin-package}}
#' 
#' @examples
#' Beir(1:10)    # defaults to nu.=0
#' Beir(1:10, nu.=2)
Beir <- function(xseq, nu.=0, return.list=FALSE, ...) UseMethod("Beir")

#' @rdname Beir
#' @method Beir default
#' @S3method Beir default
Beir.default <- function(xseq, nu.=0, return.list=FALSE, ...){
  #require(Bessel)
  toret <- Bessel::BesselJ(xseq*exp(3*pi*(1i)/4), nu=nu., ...)
  #toret <- BesselJ(xseq*exp(3*pi*(1i)/4), nu=nu., ...)
  if (return.list){
    toret <- list(bei=Im(toret), ber=Re(toret))
  }
  return(toret)
}

#' @rdname Beir
#' @export
#' @examples
#' 
#' # Imaginary component only
#' Bei(1:10)
Bei <- function(...) Beir(..., return.list=TRUE)$bei

#' @rdname Beir
#' @export
#' @examples
#' 
#' # Real component only
#' Ber(1:10)
Ber <- function(...) Beir(..., return.list=TRUE)$ber
