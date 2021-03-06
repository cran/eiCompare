% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{ny_voter}
\alias{ny_voter}
\title{New York Voter File Sample}
\format{
A data frame with 500 observations on the following 10 variables:
\describe{
 \item{Voter.ID}{Anonymized voter ID.}
 \item{SD..Poll}{Precinct ID.}
 \item{fips}{The 15-digit FIPS code}
 \item{st}{State FIPS code}
 \item{county}{County FIPS code}
 \item{tract}{Tract FIPS code}
 \item{block}{Block FIPS code}
 \item{st_cty}{State-county FIPS code}
 \item{st_cty_tract}{State-county-tract FIPS code}
 \item{Last.Name}{Voter surname.}
}
}
\source{
East Ramapo School District Board of Elections.
}
\usage{
data(ny_voter)
}
\description{
This dataset contains a sample of 500 voters in East Ramapo School District,
New York.
}
\keyword{datasets}
