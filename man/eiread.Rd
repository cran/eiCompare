\name{eiread}
\alias{eiread}

\title{
Quantities of Interest from Ecological Inference Estimation
}
\description{
eiread is the command that pulls quantities of interest from the ei object. The command returns a list of quantities of interest requested by the user.
}
\usage{
eiread(ei.object, ...)
}

\arguments{
  \item{ei.object}{An ei object from the function ei.}
  \item{\dots}{A list of quantities of interest for eiread() to return. See values below.}
}
\details{
Used within ei_est_gen() function. See ei::ei() help file for further details
}

\references{
Gary King (1997). A Solution to the Ecological Inference Problem. Princeton: Princeton University Press.}
\author{
Gary King <<email: king@harvard.edu>> and Molly Roberts <<email: roberts8@fas.harvard.edu>>}
\note{
Used within ei_est_gen() function. See ei::ei() help file for further details
}

\examples{
# TOY DATA EXAMPLE
canda <- c(.1, .09, .85, .9, .92)
candb <- 1-canda
white <- c(.8, .9, .10, .08, .11)
black <- 1 - white
total <- c(30,80, 70, 20, 29)
toy <- data.frame(canda, candb, white, black, total)

# CREATE VECTORS
cands <- c("canda")
race_group <- c("~ black") # only use one group for example
table_names <- c("EI: PCT Black", "EI: PCT White")

# RUN ei_est_gen()
# KEEP DATA TO JUST ONE ROW FOR EXAMPLE (time) ONLY!
results <- ei_est_gen(cands, race_group, "total",
                      data = toy[c(1,3,5),], table_names = table_names, sample=100)
results
}
