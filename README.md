# CapacityLogReg

The package CapacityLogReg is designed to estimate channel capacity between finite state input and multidimensional output from experimental data. For efficient computations, it uses iterative algorithm based on logistic regression.  The core function `capacity_logreg_main()` is the basic interface to all functionalities provided in the package.

## Setup

### Requirements - Hardware
  + A 32 or 64 bit OS (recommended: 64bit)
  + 1GHz processor (recommended: multicore for comprehesive analysis)
  + 1GB MB RAM (recommended: 2GB+, depends on the size of experimental data)

### Requirements - Software
The main requirement is the installation of the R environment (version: >= 3.2), which can be obtained from [R project webstie](https://www.r-project.org). The use of a dedicated IDE, e.g. [RStudio](https://www.rstudio.com) is recommended.

Apart from base installation of R, CapacityLogReg requires following packages:
1. for estimation
  + nnet
  + glmnet
  + mvtnorm
  + caret
  + doParallel (if parallel computation are needed)
2. for visualisation
  + ggplot2
  + ggthemes
  + gridExtra
3. data handling
  + data.table
  + reshape2
  + stringr
  + plyr

Each package can be installed by running 
> `install_packages("name_of_package")`
in the R interface.

### Installation

In order to install the package use command
> `install_github("anonymousDBPR/paper_statCapacity")`

## Basic usage

The package is based on a main wrapper function - `capacity_logreg_main`, which calls specific methods implemented within this package.

### Preaparing data

For the calculation of channel capacity between X and Y you need
* Data frame `dataRaw` with `signal` column of factor type (X) and `response` columns of numeric type (Y)
where `signal` has finite number of unique values.

### Run

In order to estimate channel capacity, run
`capacity_logreg_main(dataRaw, signal, response, output_path)`
where: 
* `dataRaw` is experimental data
* `signal` is a character which indicates the name of column in `dataRaw` representing the signal (X) variable
* `response` is a character vector which indicates the names of columns in `dataRaw` representing the response (Y) variables
* `output_path` is a character with the directory, to which output should be saved

### Results

The function `capacity_logreg_main` returns a list, whose main elements are

* cc - channel capacity estimate (in bits)
* p_opt - distribution of optimal signal distribution
* model - `nnet` object describing estimated model

This output object is saved in `output_path` directory in rds format.

### Visualization

If `graphs` (default=TRUE) argument of `capacity_logreg_main` is set to TRUE (as in default), also additional exploratory graphs are drawn and saved in pdf format in `output_path` directory.

## Examples

Additional examples of using package with some background on information theory is given in [`vignettes/examples.Rmd`](https://github.com/TJetka/paper_statCapacity/blob/master/vignettes/examples.Rmd).

## Other functionalities

Within the package various types, approaches and diagnostics of estimation of channel capacity is implemented.

* For bootstrap tests of significance - see [`vignettes/testing.Rmd`](https://github.com/TJetka/paper_statCapacity/blob/master/vignettes/testing.Rmd)
* Conditional channel capacity - see [`vignettes/conditional.Rmd`](https://github.com/TJetka/paper_statCapacity/blob/master/vignettes/conditional.Rmd)
* Parameters of nnet algorithm - see [`vignettes/addpar_1.Rmd`](https://github.com/TJetka/paper_statCapacity/blob/master/vignettes/add_par1.Rmd)
* Additional parameters - see [`vignettes/addpar2.Rmd`](https://github.com/TJetka/paper_statCapacity/blob/master/vignettes/addpar_2.Rmd)

## Support

Please mail authors in case of any bugs, problems and questions regarding package or inquiries regarding information theory.

## Licence

CapacityLogReg is released under the GNU licence and is freely available.
