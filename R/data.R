#' Examplary data set I
#'
#' A dataset describing simple one dimensional intput - one dimensional output channel 
#' with 500 observations per input. Each observation can be in addition of 3 types
#' that occurs with propensities (0.6,0.3,0.1), resepctively. 
#' Conditional output distributions are Gaussian.
#' 
#' @format A data frame with 1500 rows and 3 variables:
#' \describe{
#' \item{signal}{Label of input}
#' \item{response}{The value of output}
#' \item{sideVar}{Label of the type of given observation}
#' }
#' @source synthetic
"data_example1"

#' Examplary data set II
#'
#' A dataset describing a channel with 3 possible inputs and 3-dimensional output
#' with 500 observations per input.
#' Conditional output distributions are multivariate Gaussians.
#' 
#' @format A data frame with 1500 rows and 4 variables:
#' \describe{
#' \item{signal}{Label of input}
#' \item{X1}{The value of first dimension of output}
#' \item{X2}{The value of second dimension of output}
#' \item{X3}{The value of third dimension of output}
#' }
#' @source synthetic
"data_example2"


#' Data from experiment with NFkB pathway
#'
#' A dataset describing simple one dimensional intput - one dimensional output channel 
#' with 500 observations per input. Each observation can be in addition of 3 types
#' that occurs with propensities (0.6,0.3,0.1), resepctively. 
#' Conditional output distributions are Gaussian.
#' 
#' @format A data frame with 1500 rows and 3 variables:
#' \describe{
#' \item{signal}{Label of input}
#' \item{response}{The value of output}
#' \item{sideVar}{Label of the type of given observation}
#' }
#' @source in-house experimental data
"data_nfkb"

