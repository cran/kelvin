\name{Keir}
\alias{Kei}
\alias{Keir}
\alias{Keir.default}
\alias{Kelvin}
\alias{Ker}
\title{Equivalent solution to the Kelvin differential equation: Bessel-K}
\usage{
  Keir(xseq, nu. = 0, nSeq. = 1, add.tol = TRUE,
    return.list = FALSE, show.scaling = FALSE, ...)

  \method{Keir}{default} (xseq, nu. = 0, nSeq. = 1,
    add.tol = TRUE, return.list = FALSE,
    show.scaling = FALSE, ...)

  Kei(...)

  Ker(...)
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

  \item{...}{additional arguments. In \code{\link{Keir}}
  they are passed to \code{Bessel::BesselK}, and in
  \code{\link{Ker}}, and \code{\link{Kei}} they are passed
  to \code{\link{Keir}}.}
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
  functions of the second kind, specifically those produced
  by \code{Bessel::BesselK}.
}
\details{
  \code{\link{Ker}} and \code{\link{Kei}} are wrapper
  functions which return the real and imaginary components,
  respectively.
}
\examples{
Keir(1:10)    # defaults to nu.=0, nSeq=1
Keir(1:10,nSeq=2)
Keir(1:10,nSeq=2,return.list=FALSE)
# Imaginary component only
Kei(1:10)
# Real component only
Ker(1:10)
}
\author{
  Andrew Barbour <andy.barbour@gmail.com>
}
\references{
  \url{http://mathworld.wolfram.com/KelvinFunctions.html}

  Imaginary: \url{http://mathworld.wolfram.com/Kei.html}

  Real: \url{http://mathworld.wolfram.com/Ker.html}
}
\seealso{
  \code{\link{kelvin-package}}

  Other solutions: \code{\link{Bei}}, \code{\link{Beir}},
  \code{\link{Beir.default}}, \code{\link{Ber}}
}

