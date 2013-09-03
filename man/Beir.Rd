\name{Beir}
\alias{Bei}
\alias{Beir}
\alias{Beir.default}
\alias{Ber}
\title{Fundamental solution to the Kelvin differential equation: Bessel-J}
\usage{
  Beir(xseq, nu. = 0, return.list = FALSE, ...)

  \method{Beir}{default} (xseq, nu. = 0,
    return.list = FALSE, ...)

  Bei(...)

  Ber(...)
}
\arguments{
  \item{xseq}{vector; values to evaluate the complex
  solution at}

  \item{nu.}{scalar; value of \eqn{\nu} in
  \eqn{\mathcal{B}_\nu}{Bei, and Ber}}

  \item{return.list}{boolean; Should the result be a list
  instead of matrix?}

  \item{...}{additional arguments. In \code{\link{Beir}}
  they are passed to \code{Bessel::BesselJ}, and in
  \code{\link{Ber}}, and \code{\link{Bei}} they are passed
  to \code{\link{Beir}}.}
}
\value{
  If \code{return.list==FALSE} (the default), a complex
  matrix with as many columns as using \code{nSeq.}
  creates. Otherwise the result is a list with matrices for
  Real and Imaginary components.
}
\description{
  This function calculates the complex solution to the
  Kelvin differential equation using modified Bessel
  functions of the first kind, specifically those produced
  by \code{Bessel::BesselJ}.
}
\details{
  \code{\link{Ber}} and \code{\link{Bei}} are wrapper
  functions which return the real and imaginary components,
  respectively.
}
\examples{
Beir(1:10)    # defaults to nu.=0
Beir(1:10, nu.=2)
# Imaginary component only
Bei(1:10)
# Real component only
Ber(1:10)
}
\author{
  Andrew Barbour <andy.barbour@gmail.com>
}
\references{
  \url{http://mathworld.wolfram.com/KelvinFunctions.html}

  Imaginary: \url{http://mathworld.wolfram.com/Bei.html}

  Real: \url{http://mathworld.wolfram.com/Ber.html}
}
\seealso{
  \code{\link{kelvin-package}}

  Other solutions: \code{\link{Kei}}, \code{\link{Keir}},
  \code{\link{Keir.default}}, \code{\link{Ker}}
}

