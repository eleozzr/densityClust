% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/densityClust.R
\name{clusters}
\alias{clusters}
\alias{clusters.densityCluster}
\title{Extract cluster membership from a densityCluster object}
\usage{
clusters(x, ...)

\method{clusters}{densityCluster}(x, as.list = FALSE, halo.rm = TRUE, ...)
}
\arguments{
\item{x}{The densityCluster object. \code{\link[=findClusters]{findClusters()}} must have
been performed prior to this call to avoid throwing an error.}

\item{...}{Currently ignored}

\item{as.list}{Should the output be in the list format. Defaults to FALSE}

\item{halo.rm}{Logical. should halo observations be removed. Defaults to TRUE}
}
\value{
A vector or list with cluster memberships for the observations in the
initial distance matrix
}
\description{
This function allows the user to extract the cluster membership of all the
observations in the given densityCluster object. The output can be formatted
in two ways as described below. Halo observations can be chosen to be removed
from the output.
}
\details{
Two formats for the output are available. Either a vector of integers
denoting for each observation, which cluster the observation belongs to. If
halo observations are removed, these are set to NA. The second format is a
list with a vector for each group containing the index for the member
observations in the group. If halo observations are removed their indexes are
omitted. The list format correspond to the following transform of the vector
format \code{split(1:length(clusters), clusters)}, where \code{clusters} are
the cluster information in vector format.
}
