% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aux_iterative_logreg_update.R
\name{aux_iterative_logreg_update}
\alias{aux_iterative_logreg_update}
\title{Auxiliary function. Iterative updating of prior probabilities in logistic regression estimator}
\usage{
aux_iterative_logreg_update(prob_lr, p0, cell_id, signal_levels, cc_maxit)
}
\arguments{
\item{prob_lr}{is a matrix of class probabilties for each observation}

\item{p0}{is a numeric vector of prior probabilities used for logistic regression estimation}

\item{cell_id}{a list of logical vectors indicating class labels of each observation}

\item{signal_levels}{is a vector of class labels}

\item{cc_maxit}{is the number of iteration of procedure to be carried out}
}
\value{
A list with components
\enumerate{
  \item p_opt - a numeric vectors with estimated optimal input probabilities
  \item MI_opt -  a numerical value of estimated channel capacity
}
}
\description{
Auxiliary function. Iterative updating of prior probabilities in logistic regression estimator
}
