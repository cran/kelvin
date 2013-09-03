#' Equivalent solution to the Kelvin differential equation: Bessel-K
#'
#' This function calculates the complex solution to the Kelvin differential
#' equation using modified Bessel functions of the second kind, specifically
#' those produced by \code{Bessel::BesselK}.
#'
#' @details
#' \code{\link{Ker}} and \code{\link{Kei}} are wrapper functions
#' which return the real and imaginary components, respectively.
#' 
#' @param xseq vector; values to evaluate the complex solution at
#' @param nu. scalar; value of \eqn{\nu} in \eqn{\mathcal{K}_\nu}{Kei, and Ker}
#' @param nSeq. positive integer; 
#' if \eqn{nSeq > 1}, computes the result for a sequence of values;
#' if \eqn{\nu >= 0: \nu, \nu+1, \cdots, \nu+nSeq-1},
#' if \eqn{\nu < 0: \nu, \nu-1, \cdots, \nu-nSeq+1}.
#' @param add.tol boolean; fudge factor to prevent an error for zero-values
#' @param return.list boolean; Should the result be a list instead of matrix?
#' @param show.scaling boolean; Should the normalization values be given as a message?
#' @param ... additional arguments. In \code{\link{Keir}} they are
#' passed to \code{Bessel::BesselK}, and in \code{\link{Ker}}, and \code{\link{Kei}}
#' they are passed to \code{\link{Keir}}.
#' 
#' @export
#' @name Keir
#' @aliases Kelvin
#' 
#' @return If \code{return.list==FALSE} (the default),
#' a complex matrix with as many columns as using \code{nSeq.} creates.
#' Otherwise the result is a list with matrices for
#' Real and Imaginary components.
#'
#' @author Andrew Barbour <andy.barbour@@gmail.com>
#' 
#' @references \url{http://mathworld.wolfram.com/KelvinFunctions.html}
#' @references Imaginary: \url{http://mathworld.wolfram.com/Kei.html}
#' @references Real: \url{http://mathworld.wolfram.com/Ker.html}
#' 
#' @family solutions
#' @seealso \code{\link{kelvin-package}}
#' 
#' @examples
#' Keir(1:10)    # defaults to nu.=0, nSeq=1
#' Keir(1:10,nSeq=2)
#' Keir(1:10,nSeq=2,return.list=FALSE)
Keir <- function(xseq, nu.=0, nSeq.=1, 
                 add.tol=TRUE, 
                 return.list=FALSE, 
                 show.scaling=FALSE, ...) UseMethod("Keir")

#' @rdname Keir
#' @method Keir default
#' @S3method Keir default
Keir.default <- function(xseq, nu.=0, nSeq.=1, add.tol=TRUE, return.list=FALSE, show.scaling=FALSE, ...){
  #require(Bessel)
  if (add.tol){
    ret.ind <- FALSE
    #heuristic fix for zero values
    tol <- 1e-12
    zero.inds <- xseq==0
    if (TRUE %in% zero.inds){
      ret.ind <- TRUE
      warning(sprintf('values of zero were replaced with  %s',tol))
      xseq[zero.inds] <- tol
    }
  } else {
    stopifnot(!(0 %in% xseq))
  }
  #
  BessX <- xseq*exp(pi*(1i)/4)
  # Bug fix: must multiply by the specific scaling for nu., so if
  # nSeq is given the scaling will be wrong.  Fix is to create a
  # vector of scalings.  This page was useful:
  #http://keisan.casio.com/has10/SpecExec.cgi
  Nu. <- nu.:(nu.+nSeq.-1)
  Bsc <- zapsmall(exp(-1*pi*(Nu.)*(1i)/2))
  if (show.scaling) {message(sprintf("\t>>>>\tnu=%i\tscaling:\t%s\n", Nu., Bsc))}
  #
  Bsl <- Bessel::BesselK(BessX, nu=nu., nSeq=nSeq., ...)
  #Bsl <- BesselK(BessX, nu=nu., nSeq=nSeq.)
  nr. <- length(as.vector(BessX))
  stopifnot(!is.null(nr.))
  #
  mBsc <- matrix(rep(Bsc, nr.), nrow=nr., byrow=T)
  Bsl <- mBsc*Bsl
  rm(mBsc) #cleanup
  #
  if (return.list){
    Bsl <- list(kei=Im(Bsl), ker=Re(Bsl))
    if (ret.ind){Bsl$zero.indices=zero.inds}
  }
  return(Bsl)
}

#' @rdname Keir
#' @export
#' @examples
#' 
#' # Imaginary component only
#' Kei(1:10)
Kei <- function(...) Keir(..., return.list=TRUE)$kei

#' @rdname Keir
#' @export
#' @examples
#' 
#' # Real component only
#' Ker(1:10)
Ker <- function(...) Keir(..., return.list=TRUE)$ker
