% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ei_reg_bayes_conf_int.R
\name{ei_reg_bayes_conf_int}
\alias{ei_reg_bayes_conf_int}
\title{Creates EI Reg Bayes Tables}
\usage{
ei_reg_bayes_conf_int(ei_bayes)
}
\arguments{
\item{ei_bayes}{Object result of call to ei.reg.bayes() function.}
}
\value{
Matrix object, table of results
}
\description{
Creates EI reg bayes tables with confidence bands
}
\examples{
\donttest{
# Toy data example
cand_a <- c(.1, .09, .85, .9, .92)
cand_b <- 1 - cand_a
white <- c(.8, .9, .10, .08, .11)
black <- 1 - white
total <- c(30, 80, 70, 20, 29)
toy <- data.frame(cand_a, cand_b, white, black, total)

# Create vectors for iterative EI function
cands <- c("cand_a")
race_group <- c("~ black")
table_names <- c("EI: PCT Black", "EI: PCT White")

# Run iterative EI using only row for simplicity
results <- ei_est_gen(
  cands,
  race_group,
  "total",
  data = toy[c(1, 3, 5), ],
  table_names = table_names, sample = 100
)

# Generate formula for passage to ei.reg.bayes() function
form <- formula(cbind(cand_a, cand_b) ~ cbind(black, white))
# Run Bayesian model
suppressWarnings(
  ei_bayes <- ei.reg.bayes(form, data = toy, sample = 100, truncate = TRUE)
)

# Produce Table
ei_reg_bayes_conf_int(ei_bayes)
# An example using real election. Warning: this example takes a while to run.
# Load corona data
data(corona)
# Generate character vectors
cands <- c(
  "pct_husted",
  "pct_spiegel",
  "pct_ruth",
  "pct_button",
  "pct_montanez",
  "pct_fox"
)
race_group3 <- c("~ pct_hisp", "~ pct_asian", "~ pct_white")
table_names <- c("EI: Pct Lat", "EI: Pct Asian", "EI: Pct White")
# Run EI iterative Fitting
results <- ei_est_gen(
  cand_vector = cands, race_group = race_group3,
  total = "totvote", data = corona, table_names = table_names
)

# EI: RxC model
# Generate formula
form <- formula(cbind(
  pct_husted,
  pct_spiegel,
  pct_ruth,
  pct_button,
  pct_montanez,
  pct_fox
)
~ cbind(pct_hisp, pct_asian, pct_white))
suppressWarnings(
  ei_bayes <- ei.reg.bayes(
    form,
    data = corona,
    sample = 10000,
    truncate = TRUE
  )
)
# Produce Table
ei_reg_bayes_conf_int(ei_bayes)
}
}
\references{
eiPack, King et. al. (http://gking.harvard.edu/eiR)
}
\author{
Loren Collingwood <loren.collingwood@ucr.edu>
}
