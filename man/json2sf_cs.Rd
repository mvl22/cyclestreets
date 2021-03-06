% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/journey.R
\name{json2sf_cs}
\alias{json2sf_cs}
\title{Convert output from CycleStreets.net into sf object}
\usage{
json2sf_cs(obj)
}
\arguments{
\item{obj}{Object from CycleStreets.net read-in with:
\code{jsonlite::read_json("inst/extdata/res_json.json", simplifyVector = T)}}
}
\description{
Convert output from CycleStreets.net into sf object
}
\examples{
from = "Leeds Rail Station"
to = "University of Leeds"
# res_json = stplanr::route_cyclestreet(from, to, silent = FALSE, save_raw = TRUE)
# jsonlite::write_json(res_json, "inst/extdata/res_json.json")
f = system.file(package = "cyclestreets", "extdata/res_json.json")
obj = jsonlite::read_json(f, simplifyVector = TRUE)
rsf = json2sf_cs(obj)
sf:::plot.sf(rsf)
}
