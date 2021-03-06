% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/agentset-functions.R
\docType{methods}
\name{oneOf}
\alias{oneOf}
\alias{oneOf,matrix-method}
\title{One random agent}
\usage{
oneOf(agents)

\S4method{oneOf}{matrix}(agents)
}
\arguments{
\item{agents}{Matrix (ncol = 2) with the first column "pxcor" and the second
              column "pycor" representing the patches coordinates, or

              Matrix (ncol = 3) with the first column "pxcor" and the second
              column "pycor" representing the patches coordinates and the
              third column "id", or

              AgentMatrix object representing the moving agents, or

              Matrix (ncol = 2) with the first column "whoTurtles" and the
              second column "id".}
}
\value{
Matrix (ncol = 2, nrow = 1) with the first column "pxcor"
        and the second  column "pycor" representing the coordinates of the
        selected patch from \code{agents}, or

        Matrix (ncol = 2) with the first column "pxcor"
        and the second  column "pycor" representing the coordinates of the
        selected patches from \code{agents}, one per individual "id", or

        AgentMatrix object representing the turtle
        selected from \code{agents}, or

        Integer. Vector of "who" numbers for the selected turtles from
        \code{agents}, one per individual "id".
}
\description{
Report one patch or turtle randomly selected among \code{agents}.
}
\details{
If \code{agents} is a matrix with ncol = 3, the selection of one
         random patch is done per individual "id". The order of the patches
         coordinates returned follow the order of "id".
         If \code{agents} is a matrix (ncol = 2) with columns "whoTurtles" and
         "id", the selection of one random turtle (defined by their "whoTurtles")
         is done per individual "id". The order of the "who" numbers returned
         follow the order of "id".
}
\examples{
# Patches
w1 <- createWorld(minPxcor = 0, maxPxcor = 4, minPycor = 0, maxPycor = 4)
pSelect <- oneOf(agents = patches(w1))

# Turtles
t1 <- createTurtles(n = 10, coords = randomXYcor(w1, n = 10))
tSelect <- oneOf(agents = t1)


}
\references{
Wilensky, U. 1999. NetLogo. http://ccl.northwestern.edu/netlogo/.
            Center for Connected Learning and Computer-Based Modeling,
            Northwestern University. Evanston, IL.
}
\seealso{
\url{https://ccl.northwestern.edu/netlogo/docs/dictionary.html#one-of}
}
\author{
Sarah Bauduin
}
