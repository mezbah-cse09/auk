% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auk-protocol.r
\name{auk_protocol}
\alias{auk_protocol}
\title{Filter the eBird data by protocol}
\usage{
auk_protocol(x, protocol)
}
\arguments{
\item{x}{\code{auk_ebd} or \code{auk_sampling} object; reference to file created by
\code{\link[=auk_ebd]{auk_ebd()}} or \code{\link[=auk_sampling]{auk_sampling()}}.}

\item{protocol}{character; "Stationary", "Traveling", or "Incidental". Other
protocols exist in the database, however, this function only extracts these
three standard protocols. Multiple protocols are accepted.}
}
\value{
An \code{auk_ebd} object.
}
\description{
Filter to just data collected following a specific search protocol:
stationary, traveling, or casual. This function only defines the filter and,
once all filters have been defined, \code{\link[=auk_filter]{auk_filter()}} should be used to call AWK
and perform the filtering.
}
\details{
This function can also work with on an \code{auk_sampling} object if the
user only wishes to filter the sampling event data.
}
\examples{
system.file("extdata/ebd-sample.txt", package = "auk") \%>\%
  auk_ebd() \%>\%
  auk_protocol("Stationary")
  
# alternatively, without pipes
ebd <- auk_ebd(system.file("extdata/ebd-sample.txt", package = "auk"))
auk_protocol(ebd, "Stationary")
}
