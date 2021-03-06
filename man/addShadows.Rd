% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/map_plugins.R
\name{addShadows}
\alias{addShadows}
\title{Add a shadow to map layers}
\usage{
addShadows(map)
}
\arguments{
\item{map}{A map object created with \code{\link[leaflet]{leaflet}()}}
}
\value{
The modified map object
}
\description{
This function adds a shadow to every svg element added to a leaflet map. It
can greatly improve the lisibility of the map.
}
\examples{
if (require(leaflet)) {
  leaflet() \%>\%
    addTiles() \%>\% 
    addDirectedSegments(0, 0, 1, 0, col= gray(0.9)) \%>\%
    addCircleMarkers(c(0, 1), c(0, 0), color = "white", fillOpacity = 1, stroke = FALSE) \%>\%
    addShadows()
}

}
