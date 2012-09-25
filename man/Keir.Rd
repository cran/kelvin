\docType{methods}
\name{Keir}
\alias{Keir}
\alias{Keir.default}
\title{Solutions to the Kelvin differential equations: 'Kei' and 'Ker'}
\usage{
  Keir(xseq, nu. = 0, nSeq. = 1, add.tol = TRUE,
    return.list = FALSE, show.scaling = FALSE, ...)

  \method{Keir}{default} (xseq, nu. = 0, nSeq. = 1,
    add.tol = TRUE, return.list = FALSE,
    show.scaling = FALSE, ...)
}
\arguments{
  \item{xseq}{vector; values to evaluate the complex
  solution at}

  \item{nu.}{scalar; value of \eqn{\nu} in
  \eqn{\mathcal{K}_\nu}{Kei, and Ker}}

  \item{nSeq.}{positive integer; if \eqn{nSeq > 1},
  computes the result for a sequence of values; if \eqn{\nu
  >= 0: \nu, \nu+1, \cdots, \nu+nSeq-1}, if \eqn{\nu < 0:
  \nu, \nu-1, \cdots, \nu-nSeq+1}.}

  \item{add.tol}{boolean; fudge factor to prevent an error
  for zero-values}

  \item{return.list}{boolean; Should the result be a list
  instead of matrix?}

  \item{show.scaling}{boolean; Should the normalization
  values be given as a message?}

  \item{...}{additional parameters (currently unused)}
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
  function of the second kind, specifically that which is
  produced by \code{Bessel::BesselK}.
}
\examples{
Keir(1:10)    # defaults to nu.=0, nSeq=1
Keir(1:10,nSeq=2)
Keir(1:10,nSeq=2,return.list=FALSE)
}
\author{
  Andrew Barbour <andy.barbour@gmail.com>
}
\references{
  \url{http://mathworld.wolfram.com/KelvinFunctions.html}
}
\seealso{
  \code{\link{Ker}}, \code{\link{Kei}}, \code{\link{Beir}}
}
\keyword{"Orthogonal}
\keyword{Kelvin}
\keyword{functions"}
\keyword{functions","complementary}

