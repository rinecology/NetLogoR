% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spades-functions.R
\docType{methods}
\name{adj}
\alias{adj}
\title{Fast `adjacent` function, and Just In Time compiled version}
\usage{
adj(x = NULL, cells, directions = 8, sort = FALSE, pairs = TRUE,
  include = FALSE, target = NULL, numCol = NULL, numCell = NULL,
  match.adjacent = FALSE, cutoff.for.data.table = 10000, torus = FALSE,
  id = NULL)
}
\arguments{
\item{x}{Raster* object for which adjacency will be calculated.}

\item{cells}{vector of cell numbers for which adjacent cells should be found. Cell
numbers start with 1 in the upper-left corner and increase from left
to right and from top to bottom}

\item{directions}{the number of directions in which cells should be connected: 4
(rook's case), 8 (queen's case), or 'bishop' to connect cells
with one-cell diagonal moves. Or a neigborhood matrix (see Details)}

\item{sort}{logical. Whether the outputs should be sorted or not, using Cell IDs of the
from cells (and to cells, if \code{match.adjacent} is TRUE.}

\item{pairs}{logical. If TRUE, a matrix of pairs of adjacent cells is returned.
If FALSE, a vector of cells adjacent to cells is returned}

\item{include}{logical. Should the focal cells be included in the result?}

\item{target}{a vector of cells that can be spread to. This is the inverse of a mask.}

\item{numCol}{numeric indicating number of columns in the raster. Using this with
numCell is a bit faster execution time.}

\item{numCell}{numeric indicating number of cells in the raster. Using this
with numCol is a bit faster execution time.}

\item{match.adjacent}{logical. Should the returned object be the same as the \code{adjacent}
function in the raster package.}

\item{cutoff.for.data.table}{numeric. If the number of cells is above this value,
the function uses data.table which is
faster with large numbers of cells.}

\item{torus}{Logical. Should the spread event wrap around to the other side of the raster.
Default is FALSE.}

\item{id}{numeric If not NULL, then function will return "id" column. Default NULL.}
}
\value{
a matrix of one or two columns, from and to.
}
\description{
Faster function for determining the cells of the 4, 8 or bishop
 neighbours of the \code{cells}. This is a hybrid function that uses
 matrix for small numbers of loci (<1e4) and data.table for larger numbers of loci
}
\details{
Between 4x (large number loci) to 200x (small number loci) speed gains over
\code{adjacent} in raster package. There is some extra speed gain if
\code{NumCol} and \code{NumCells} are passed rather than a raster.
Efficiency gains come from:
 1. use \code{data.table} internally
    - no need to remove NAs because wrapped or outside points are
      just removed directly with data.table
    - use data.table to sort and fast select (though not fastest possible)
 2. don't make intermediate objects; just put calculation into return statement

The steps used in the algorithm are:
1. Calculate indices of neighbouring cells
2. Remove "to" cells that are
   - <1 or >numCells (i.e., they are above or below raster), using a single modulo
     calculation
   - where the modulo of "to" cells is equal to 1 if "from" cells are 0 (wrapped right
     to left)
   - or where the modulo of the "to" cells is equal to 0 if "from" cells are 1 (wrapped
     left to right)
}
\examples{
library(raster)
a <- raster(extent(0, 1000, 0, 1000), res = 1)
sam <- sample(1:length(a), 1e4)
numCol <- ncol(a)
numCell <- ncell(a)
adj.new <- adj(numCol = numCol, numCell = numCell, cells = sam, directions = 8)
adj.new <- adj(numCol = numCol, numCell = numCell, cells = sam, directions = 8,
  include = TRUE)

}
\seealso{
\code{\link[raster]{adjacent}}
}
\author{
Eliot McIntire
}
