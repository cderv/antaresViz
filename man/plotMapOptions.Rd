% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/map_options.R
\name{plotMapOptions}
\alias{plotMapOptions}
\alias{colorScaleOptions}
\title{Graphical options for plotMap}
\usage{
plotMapOptions(areaDefaultCol = "#DDDDE5", areaDefaultSize = 30,
  areaMaxSize = 50, areaMaxHeight = 50, areaChartColors = NULL,
  areaColorScaleOpts = colorScaleOptions(), linkDefaultCol = "#BEBECE",
  linkDefaultSize = 3, linkMaxSize = 15,
  linkColorScaleOpts = colorScaleOptions(), legend = c("choose", "visible",
  "hidden"), addTiles = TRUE, background = "white", polygons = NULL,
  polygonOptions = list(stroke = TRUE, color = "#999", weight = 0.5, opacity =
  1, fillOpacity = 0.2, options = list(clickable = FALSE)))

colorScaleOptions(breaks = 5, domain = NULL, negCol = "#FF0000",
  zeroCol = "#FAFAFA", posCol = "#0000FF", naCol = "#EEEEEE",
  zeroTol = NULL, colors = NULL, levels = NULL)
}
\arguments{
\item{areaDefaultCol}{default color of areas.}

\item{areaDefaultSize}{default size of areas.}

\item{areaMaxSize}{maximal size of an area when it represents the value of some variable.}

\item{areaMaxHeight}{Maximal height of bars. Used only if a barchart representation is used.}

\item{areaChartColors}{Vector of colors to use in polar area charts and bar charts}

\item{areaColorScaleOpts}{List of options used to construct a continuous color scale. This list should
be generated with function \code{colorScaleOptions}.}

\item{linkDefaultCol}{Default color of links.}

\item{linkDefaultSize}{Default line width of links.}

\item{linkMaxSize}{Maximal line width of a link when it represents the value of some variable.}

\item{linkColorScaleOpts}{List of options used to construct a continuous color scale. This list should
be generated with function \code{colorScaleOptions}.}

\item{legend}{Should the legend be displayed or not ? Default is to mask the legend but
add a button to display it. Other values are "visible" to make the legend
always visible and "hidden" to mask it.}

\item{addTiles}{Should a base map be downloaded on the internet and displayed ?}

\item{background}{Background color of maps (currently not implemented).}

\item{polygons}{An object of class \code{SpatialPolygonsDataFrame} created by package 
\code{sp} or related packages. These polygons will be displayed above the 
base map (if any) and under the layer containing areas and links. It can
be useful to create maps that do not require an internet connection to be
correctly displayed or to display custom geographic area boundaries.}

\item{polygonOptions}{A list of options that are accepted by function 
\code{\link[leaflet]{addPolygons}}. When parameter \code{polygons} is 
provided, these options control how they are drawn on the map (color, 
opacity, etc.).}

\item{breaks}{Either a single number indicating the approximate number of colors to use, or
a vector of values at which values to change color. 
In the first case, the function tries to cut the data nicely, so the real 
number of colors used may vary.}

\item{domain}{Range of the data, ie. the range of possible values. If \code{NULL}, the
the range of the data is used}

\item{negCol}{color of the extreme negative value.}

\item{zeroCol}{color of the 0 value.}

\item{posCol}{Color of the extreme positive value.}

\item{naCol}{Color for missing values}

\item{zeroTol}{All values in the interval \code{\[-zeroTol, +zeroTol\]} are mapped to the
\code{zeroCol} color. If \code{NULL}, the function tries to pick a nice
value that is approximately equal to 1\% of the maximal value.}

\item{colors}{Vector of colors. If it is set and if user manually sets break points, then
these colors are used instead of the colors defined by parameters negCol,
zeroCol and posCol.}

\item{levels}{Vector of the distinct values a variable can take. Only used when the 
variable to represent is a categorical variable.}
}
\value{
A list with the values of the different graphical parameters.
}
\description{
These functions get and set options that control some graphical aspects 
of maps created with \code{\link{plotMap}}.
}
\examples{
\dontrun{
params <- plotMapOptions(areaDefaultCol = "red", linkDefaultCol = "orange")
plotMap(mydata, mylayout, options = params)
}

}
