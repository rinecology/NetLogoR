% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/agentset-functions.R
\docType{methods}
\name{sortOn}
\alias{sortOn}
\alias{sortOn,NLworld,matrix,missing-method}
\alias{sortOn,NLworldStack,matrix,character-method}
\title{Sort on}
\usage{
sortOn(world, agents, pVar)

\S4method{sortOn}{NLworld,matrix,missing}(world, agents)

\S4method{sortOn}{NLworldStack,matrix,character}(world, agents, pVar)
}
\arguments{
\item{world}{A \code{NLworld*} object.}

\item{agents}{A matrix (ncol = 2) with the first column \code{pxcor} and the
second column \code{pycor} representing the coordinates of the
patches to be sorted.}

\item{pVar}{If the world is a \code{NLworldStack}, pVar is the name (characters)
of the layer used for sorting the patches.}
}
\value{
A matrix (ncol = 2) with the first column \code{pxcor} and the second column
        \code{pycor} representing the coordinates of the sorted patches.
}
\description{
Reports the coordinates \code{pxcor} and \code{pycor} of the patches sorted
according to their value.
}
\details{
!!! Only implemented for patches so far !!!

The sorting of the agents based on their value is done in a increasing order.
}
\examples{
w1 <- createNLworld(minPxcor = 0, maxPxcor = 4, minPycor = 0, maxPycor = 4)
w1[] <- sample(1:5, size = 25, replace = TRUE)
plot(w1)
p1 <- sortOn(world = w1, agents = patches(world = w1))

}
\author{
Sarah Bauduin
}
\references{
Wilensky, U. 1999. NetLogo. http://ccl.northwestern.edu/netlogo/.
            Center for Connected Learning and Computer-Based Modeling,
            Northwestern University. Evanston, IL.
}
