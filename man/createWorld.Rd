% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NetLogoR-classes.R
\docType{methods}
\name{createWorld}
\alias{createWorld}
\alias{createWorld,numeric,numeric,numeric,numeric,ANY-method}
\alias{createWorld,missing,missing,missing,missing,missing-method}
\title{Create a world}
\usage{
createWorld(minPxcor, maxPxcor, minPycor, maxPycor, data = NA)

\S4method{createWorld}{numeric,numeric,numeric,numeric,ANY}(minPxcor, maxPxcor,
  minPycor, maxPycor, data = NA)

\S4method{createWorld}{missing,missing,missing,missing,missing}()
}
\arguments{
\item{minPxcor}{Integer. Minimum pxcor for the patches (world's left border).}

\item{maxPxcor}{Integer. Maximum pxcor for the patches (world's right border).}

\item{minPycor}{Integer. Minimum pycor for the patches (world's bottom border).}

\item{maxPycor}{Integer. Maximum pycor for the patches (world's top border).}

\item{data}{Vector of length 1 or length
\code{(maxPxcor - minPxcor + 1) * (maxPycor - minPycor + 1)}.
 Default is \code{NA}.}
}
\value{
WorldMatrix object composed of
        \code{(maxPxcor - minPxcor + 1) * (maxPycor - minPycor + 1)}
        patches (i.e., matrix cells).
}
\description{
Create a world of patches of class worldMatrix.
}
\details{
If \code{data} is provided, values are assigned by rows.

         If no parameters value are provided, default values are:
         \code{minPxcor = -16},
         \code{maxPxcor = 16}, \code{minPycor = -16}, and \code{maxPycor = 16}.

         See \code{help("worldMatrix-class")} for more details on the worldMatrix class.
}
\examples{
w1 <- createWorld(minPxcor = 0, maxPxcor = 4, minPycor = 0, maxPycor = 4,
                          data = 1:25)
plot(w1)


}
\references{
Wilensky, U. 1999. NetLogo. http://ccl.northwestern.edu/netlogo/.
            Center for Connected Learning and Computer-Based Modeling,
            Northwestern University. Evanston, IL.
}
\author{
Sarah Bauduin, Eliot McIntire, and Alex Chubaty
}
