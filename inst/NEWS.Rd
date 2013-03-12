% borrowed some formatting from
% http://svn.r-project.org/R/trunk/doc/NEWS.Rd
% -*- coding: utf-8 -*-
%%\newcommand{\PR}{\Sexpr[results=rd]{tools:::Rd_expr_PR(#1)}}
%%\newcommand{\Rlogo}{\if{html}{\figure{../../html/logo.jpg}}\if{latex}{\figure{logo.jpg}{options: width=0.5in}}}
\newcommand{\CRANpkg}{\href{http://CRAN.R-project.org/package=#1}{\pkg{#1}}}

\name{kelvin}
\title{News for package 'kelvin'}
\encoding{UTF-8}

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
