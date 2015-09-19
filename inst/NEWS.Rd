% -*- coding: utf-8 -*-
\newcommand{\GITpkg}{\href{http://www.github.com/abarbour/#1}{github}}
\newcommand{\CRANpkg}{\href{http://cran.r-project.org/package=#1}{CRAN}}
\newcommand{\CODEcov}{\href{http://codecov.io/github/abarbour/#1?branch=master}{codecov.io}}
\newcommand{\Trav}{\href{https://travis-ci.org/abarbour/#1}{Travis-CI}}
\newcommand{\kel}{\pkg{kelvin}}
\newcommand{\gitkel}{\GITpkg{kelvin} page}

\name{kelvin}
\title{News for package \kel: \CRANpkg{kelvin} -- \GITpkg{kelvin} -- \Trav{kelvin} -- \CODEcov{kelvin}}
\encoding{UTF-8}

\section{CHANGES IN kelvin VERSION 2.0-0 (2015-09-18)}{
  \itemize{
    \item Lots of cleanup.
    \item Previous demo converted to vignette.
    \item Unit tests.
  }
}
\section{CHANGES IN kelvin VERSION 1.2-2 (2013-09-03)}{
  \itemize{
    \item Removed README.md from build, per request from CRAN.
    \item Documentation improvements, and restructuring.
  }
}
\section{CHANGES IN kelvin VERSION 1.2-1 (2013-03-12)}{
  \itemize{
    \item Empty \code{.Last.lib} function removed.
  }
}
\section{CHANGES IN kelvin VERSION 1.2-0 (2013-03-11)}{
  \itemize{
    \item \code{Kelvin} is now an alias, rather than a methods pointer.
    \item \code{.onAttach} message was fixed.
    \item Some rephrasing in the description.
    \item NEWS is now in Rd format in the inst/ directory.
  }
}
\section{CHANGES IN kelvin VERSION 1.1-0 (2012-09-26)}{
  \itemize{
    \item This marks the first release to CRAN: \CRANpkg{kelvin}.
    \item \code{plot_kelvin_curves} demo added.
    \item Documentation is complete, thanks to \CRANpkg{roxygen2}.
  }
}
\section{CHANGES IN kelvin VERSION 1.0-1 (2012-07-27)}{
  \itemize{
    \item Bug fix: scaling was inappropriately applied if nSeq>1, meaning that
    higher order functions would have incorrect sign. Checked consistency
    in higher order terms with figures on Wolfram's site.
    \item \strong{WARNING}:
    Importing \CRANpkg{Bessel} overrides fundamental \code{base}
    functions such as cbind, %*%, etc.  This worries me somewhat, but hasnt 
    been an issue as of yet; the maintainer of Bessel is a core contributor
    and is likely aware of the conflict.
  }
}
\section{kelvin INITIAL VERSION 1.0-0 (2012-05-30)}{}
