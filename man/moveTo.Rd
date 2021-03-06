% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/turtle-functions.R
\docType{methods}
\name{moveTo}
\alias{moveTo}
\alias{moveTo,agentMatrix,matrix-method}
\title{Move to}
\usage{
moveTo(turtles, agents)

\S4method{moveTo}{agentMatrix,matrix}(turtles, agents)
}
\arguments{
\item{turtles}{AgentMatrix object representing the moving agents.}

\item{agents}{Matrix (ncol = 2) with the first column "pxcor" and the second
              column "pycor" representing the patches coordinates, or

              AgentMatrix object representing the moving agents.}
}
\value{
AgentMatrix representing the \code{turtles} with updated coordinates
        and updated data for their previous coordinates "prevX" and "prevY".
}
\description{
Move the \code{turtles} to the \code{agents}' locations.
}
\details{
The number of \code{agents} must be equal to 1 or to
         length \code{turtles}.

         The \code{turtle}'s headings are not affected with this function.

         If a turtle is moving to a patch location, it will be located at
         the patch center.
}
\examples{
w1 <- createWorld(minPxcor = 0, maxPxcor = 9, minPycor = 0, maxPycor = 9,
                          data = runif(100))
t1 <- createTurtles(n = 5, coords = randomXYcor(w1, n = 5))
plot(w1)
points(t1, col = "black", pch = 16)

t1 <- moveTo(turtles = t1, agents = turtle(t1, who = 0))
points(t1, col = "red", pch = 16)

t1 <- moveTo(turtles = t1, agents = patch(w1, 9, 9))
points(t1, col = "blue", pch = 16)


}
\references{
Wilensky, U. 1999. NetLogo. http://ccl.northwestern.edu/netlogo/.
            Center for Connected Learning and Computer-Based Modeling,
            Northwestern University. Evanston, IL.
}
\seealso{
\url{https://ccl.northwestern.edu/netlogo/docs/dictionary.html#move-to}
}
\author{
Sarah Bauduin
}
