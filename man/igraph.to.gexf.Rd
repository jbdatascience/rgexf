% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/igraph.r
\name{igraph.to.gexf}
\alias{igraph.to.gexf}
\alias{gexf.to.igraph}
\title{Converting between \code{gexf} and \code{igraph} classes}
\usage{
igraph.to.gexf(igraph.obj, ...)

gexf.to.igraph(gexf.obj)
}
\arguments{
\item{igraph.obj}{An object of class \code{igraph}.}

\item{...}{Further arguments passed to \code{\link[=gexf]{gexf()}}.}

\item{gexf.obj}{An object of class \code{gexf}.}
}
\value{
\itemize{ \item For \code{igraph.to.gexf} : \code{gexf} class object
\item For \code{gexf.to.igraph} : \code{igraph} class object }
}
\description{
Converts objects between \code{gexf} and \code{igraph} objects keeping
attributes, edge weights and colors.
}
\details{
If the position argument is not \code{NULL}, the new \code{gexf} object will
include the \code{position} viz-attribute.
}
\examples{

 \dontrun{
 
  # Running demo
  demo(gexfigraph)
 
  fn <- system.file("gexf-graphs/lesmiserables.gexf", package = "rgexf")
  gexf1 <- read.gexf(fn)
  igraph1 <- gexf.to.igraph(gexf1)
  gexf2 <- igraph.to.gexf(igraph1)
  
  # Now, let's do it with a layout! (although we can just use
  # the one that comes with lesmiserables :))
  pos <- igraph::layout_nicely(igraph1)
  plot(
    igraph.to.gexf(igraph1, nodesVizAtt = list(position=cbind(pos, 0))),
    edgeWidthFactor = .01)
 }
}
\seealso{
\code{\link[=layout]{layout()}}
}
\author{
George Vega Yon \email{g.vegayon@gmail.com}
}
\keyword{manip}
