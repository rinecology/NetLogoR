% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Classes.R
\docType{class}
\name{agentMatrix-class}
\alias{agentMatrix-class}
\title{The agentMatrix class}
\description{
Documentation needed.
}
\examples{
newAgent <- new("agentMatrix",
      coords = cbind(pxcor = c(1, 2, 5), pycor = c(3, 4, 6)),
      char = letters[c(1, 2, 6)],
      nums2 = c(4.5, 2.6, 2343),
      char2 = LETTERS[c(4, 24, 3)],
      nums = 5:7)

# compare speeds -- about 5x faster
if(require(microbenchmark)) {
  microbenchmark(times = 499,
    spdf = {SpatialPointsDataFrame(
      coords = cbind(pxcor = c(1, 2, 5), pycor = c(3, 4, 6)),
      data = data.frame(
          char = letters[c(1, 2, 6)],
          nums2 = c(4.5, 2.6, 2343),
          char2 = LETTERS[c(4, 24, 3)],
          nums = 5:7))},
    agentMat = {agentMatrix(
        coords = cbind(pxcor = c(1, 2, 5),
        pycor = c(3, 4, 6)),
        char = letters[c(1, 2, 6)],
        nums2 = c(4.5, 2.6, 2343),
        char2 = LETTERS[c(4, 24, 3)],
        nums = 5:7)},
    agentMatDirect = {new("agentMatrix",
        coords = cbind(pxcor = c(1, 2, 5),
        pycor = c(3, 4, 6)),
        char = letters[c(1, 2, 6)],
        nums2 = c(4.5, 2.6, 2343),
        char2 = LETTERS[c(4, 24, 3)],
        nums = 5:7)})
}
}
\author{
Eliot McIntire
}
