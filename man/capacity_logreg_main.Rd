% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/capacity_logreg_main.R
\name{capacity_logreg_main}
\alias{capacity_logreg_main}
\title{Calculate channel capacity}
\usage{
capacity_logreg_main(dataRaw, signal = "signal", response = "response",
  side_variables = NULL, formula_string = NULL, glmnet_algorithm = FALSE,
  dataMatrix = NULL, glmnet_cores = 1, glmnet_lambdanum = 10,
  cc_maxit = 100, lr_maxit = 1000, MaxNWts = 5000, output_path,
  testing = FALSE, model_out = TRUE, scale = TRUE, graphs = TRUE,
  TestingSeed = 1234, testing_cores = 4, boot_num = 10, boot_prob = 0.8,
  sidevar_num = 10, traintest_num = 10, partition_trainfrac = 0.6,
  plot_width = 6, plot_height = 4, dataout = TRUE)
}
\arguments{
\item{dataRaw}{must be a data.frame object}

\item{signal}{is a character object that indicates columns of data to be treated as channel's input}

\item{response}{is a character vector that indicates columns of data to be treated as channel's output}

\item{side_variables}{is an optional character vector that indicates side variables' columns of data, if NULL no side variables are included}

\item{formula_string}{is a character object that includes a formula syntax to use in algorithm for capacity calculation}

\item{glmnet_algorithm}{is the logical indicating if the glmnet package should be used}

\item{dataMatrix}{is a numeric matrix with columns treated as explanatory variables in 
logistic regression algorithm (only if glmnet_algorithm=TRUE)}

\item{glmnet_cores}{is the number of cores to use in parallel computing of glmnet package}

\item{glmnet_lambdanum}{is the lambda parameter of glmnet package}

\item{cc_maxit}{is the number of iteration of iterative algorithm of finding maximum CC}

\item{lr_maxit}{is the number of iteration of iterative algorithm of logistic regression}

\item{output_path}{is the directory in which output will be saved}

\item{testing}{is the logical indicating if the testing procedures should be included}

\item{model_out}{is the logical indicating if the calculated logisitc regression model should be included in output list}

\item{scale}{is the logical indicating if the data preprocessing should be carried out}

\item{graphs}{is the logical indicating if output graphs should be created}

\item{TestingSeed}{is the seed used in bootstrap procedures (only if testing=TRUE)}

\item{testing_cores}{- number of cores to use in parallel computing if implemented (only if testing=TRUE)}

\item{boot_num}{is the number of bootstrap tests to be performed (only if testing=TRUE)}

\item{boot_prob}{is the proportion of initial size of data to be used in bootstrap (only if testing=TRUE)}

\item{traintest_num}{is the number of traintest tests to be performed (only if testing=TRUE)}

\item{partition_trainfrac}{is the fraction of data to be used as a training dataset (only if testing=TRUE)}

\item{plot_height, }{plot_width - the basic dimnesions of plots}

\item{maxNWts}{is the maximum acceptable number of weights in logistic regression algorithm - the higher, the slower the computations}

\item{resamp_num}{is the number of resmapling tests to be performed (only if testing=TRUE)}
}
\value{
a list with several elements:
\itemize{
\item output$regression - confusion matrix of logistic regression predictions
\item output$cc         - channel capacity in bits
\item output$p_opt      - optimal probability distribution
\item output$model      - nnet object describing logistic regression model (if model_out=TRUE)
\item output$params     - parameters used in algorithm
\item output$time       - computation time of calculations
\item output$testing    - a 4-element output list of testing procedures (bootstrap, resamplingMorph, traintest, bootResampMorph) (if testing=TRUE)
\item output$testing_pv - one-sided p-values of testing procedures (if testing=TRUE)
\item output$data       - dataRaw object
\item output$logGraphs  - ggplot and grid objects of output graphs (if graphs=TRUE)
}
}
\description{
The main wrapping function for basic usage of CapacityLogReg package
}
\examples{
tempdata=data_example1
dir.create("example1/",recursive=TRUE)
outputCLR1=capacity_logreg_main(dataRaw=tempdata,
signal="signal", response="output", side_variables = NULL ,
formula_string = "signal~output",
cc_maxit=75,lr_maxit=1500, output_path="example1/",plot_height=8,plot_width=12)


tempdata=data_example1
dir.create("example1_sv/",recursive=TRUE)
outputCLR1_sv=capacity_logreg_main(dataRaw=tempdata,
signal="signal", response="output", side_variables = "sideVar" ,
formula_string = "signal~output*sideVar",
cc_maxit=75,lr_maxit=1500, output_path="example1_sv/",plot_height=8,plot_width=12)


tempdata=data_example1
dir.create("example1_testing/",recursive=TRUE)
outputCLR1_testing=capacity_logreg_main(dataRaw=tempdata,
signal="signal", response="output", side_variables = NULL ,
formula_string = "signal~output",
cc_maxit=75,lr_maxit=1500, output_path="example1_testing/",plot_height=8,plot_width=12,
testing=TRUE,graphs=TRUE,TestingSeed=11111, boot_num=50,boot_prob=0.8,testing_cores=2,
sidevar_num=2,traintest_num=50,partition_trainfrac=0.6)


tempdata=data_example2
dir.create("example2/",recursive=TRUE)
outputCLR2=capacity_logreg_main(dataRaw=tempdata,
signal="signal", response=c("X1","X2","X3"), side_variables = NULL ,
formula_string = "signal~X1+X2+X3",
cc_maxit=75,lr_maxit=1500, output_path="example2/",plot_height=8,plot_width=12) 

For further details see vignette
}
