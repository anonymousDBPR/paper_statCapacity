#' Density function of gaussian mixture distribution
#' 
#' This function calculates the value of density of a finite mixutre of multivariate gaussian distributions
#' @param x is a numerical vector of quantiles
#' @param s is a numerical vector of the number of gaussian distribution in the mixture
#' @param mu is a list, of length the same as vector s, whose each element is the mean vector of subsequent gaussians
#' @param sigma is a list, of length the same as vector s, whose each element is the covariance matrix of subsequent gaussians
#' @return the value of density
#' @examples 
#' jointProb_gaussian_md(x=c(1,1),s=c(0.2,0.8), 
#' mu=list(c(0,0),c(1,1)),
#' sigma=list(matrix(c(1,0.5,0.5,1),2,2),matrix(c(1,0.1,0.1,1),2,2) ))
#'
#'
#' x=seq(from=-10,to=10,length.out = 500)
#' dmg=matrix(0,length(x),length(x))
#' for (i in 1:length(x) ){
#'     for (j in 1:length(x)){
#'         dmg[i,j]=jointProb_gaussian_md(x=c(x[i],x[j]),s=c(0.2,0.8), mu=list(c(0,0),c(1,1)),sigma=list(matrix(c(1,0.5,0.5,1),2,2),matrix(c(1,0.1,0.1,1),2,2) ))
#'     }
#' }
#' trapz_simple(x,apply(dmg,1,function(z) trapz_simple(x,z) ))
#'
#' @keywords internal
jointProb_gaussian_md<-function(x,s,mu,sigma){
  out<-do.call(sum,mapply(function(signal,tmp_mean,tmp_sigma) {signal*mvtnorm::dmvnorm(x=x,mean=tmp_mean,sigma=tmp_sigma)},
                          s,mu,sigma,SIMPLIFY=FALSE))
  
  out
}
