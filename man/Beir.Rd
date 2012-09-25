\docType{methods}
\name{Beir}
\alias{Beir}
\alias{Beir.default}
\title{Solutions to the Kelvin differential equations: 'Bei' and 'Ber'}
\usage{
  Beir(xseq, nu. = 0, return.list = FALSE, ...)

  \method{Beir}{default} (xseq, nu. = 0,
    return.list = FALSE, ...)
}
\arguments{
  \item{xseq}{vector; values to evaluate the complex
  solution at}

  \item{nu.}{scalar; value of \eqn{\nu} in
  \eqn{\mathcal{B}_\nu}{Bei, and Ber}}

  \item{return.list}{boolean; Should the result be a list
  instead of matrix?}

  \item{...}{arguments passed to \code{Bessel::BesselJ}}
}
\value{
  If \code{return.list==FALSE} (default), a complex matrix
  with as many columns as using \code{nSeq.} creates.
  Otherwise the result is a list with matrices for Real and
  Imaginary components.

  \code{NULL}
}
\description{
  This function calculates the complex solution to the
  Kelvin differential equations using modified Bessel
  function of the first kind, specifically that which is
  produced by \code{Bessel::BesselJ}.
}
\examples{
Beir(1:10)    # defaults to nu.=0
Beir(1:10, nu.=2)
}
\author{
  Andrew Barbour <andy.barbour@gmail.com>
}
\references{
  \url{http://mathworld.wolfram.com/KelvinFunctions.html}
}
\seealso{
  \code{\link{Ber}}, \code{\link{Bei}}, \code{\link{Keir}}
}
\keyword{"Kelvin}
\keyword{"Orthogonal}
\keyword{functions"}
\keyword{functions",}

