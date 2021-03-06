% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wru_predict_race_wrapper.R
\name{wru_predict_race_wrapper}
\alias{wru_predict_race_wrapper}
\title{Prepares a voter file for the WRU predict_race function, and then predicts
race.}
\usage{
wru_predict_race_wrapper(
  voter_file,
  census_data,
  voter_id = NULL,
  surname = "last_name",
  state = NULL,
  county = NULL,
  tract = NULL,
  block = NULL,
  census_geo = NULL,
  use_surname = TRUE,
  surname_only = FALSE,
  surname_year = 2010,
  use_age = FALSE,
  use_sex = FALSE,
  return_surname_flag = FALSE,
  return_geocode_flag = FALSE,
  verbose = FALSE
)
}
\arguments{
\item{voter_file}{The voter file, containing columns with a surname and
potentially geographic information.}

\item{census_data}{A data frame containing Census data corresponding to the
geographic information for units in the voter file.}

\item{voter_id}{A string denoting the column containing voter ID. Default is
NULL, if there is no voter ID in the file. In this case, a voter ID will be
assigned.}

\item{surname}{A string denoting the column containing the surname.}

\item{state}{A string denoting the column containing the state FIPS code.}

\item{county}{A string denoting the column containing the county FIPS code.}

\item{tract}{A string denoting the column containing the tract FIPS code.}

\item{block}{A string denoting the column containing the block FIPS code.}

\item{census_geo}{The census level at which to apply BISG. Passed to WRU.}

\item{use_surname}{Whether to use the surname in calculating race
probabilities. Passed to WRU.}

\item{surname_only}{Whether to only use the surname in calculating race
probabilities. Passed to WRU.}

\item{surname_year}{Which Census year to use for surname matching. Passed to
WRU.}

\item{use_age}{Whether to use the age in the BISG calculation. Passed to WRU.}

\item{use_sex}{Whether to use the sex in the BISG calculation. Passed to WRU.}

\item{return_surname_flag}{If TRUE, returns a flag indicating whether the
surnames matched.}

\item{return_geocode_flag}{If TRUE, returns a flag indicating whether the
first level of geocode matched.}

\item{verbose}{A flag indicating whether to print out status messages.}
}
\value{
The voter file component extracted from the provided data frame, with
additional surname/geocode flags, as well as a data frame race prediction.
}
\description{
This function assumes that the Census data is provided to the function. It
does not provide the capability of downloading the Census data, since this
is a time intensive process.
}
\references{
Imai and Khanna (2016) "Improving Ecological Inference by
Predicting Individual Ethnicity from Voter Registration Records"
}
