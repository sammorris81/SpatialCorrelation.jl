rm(list=ls())
options(warn=2)
library(fields)
library(evd)
library(spBayes)
library(fields)
library(SpatialTools)

n <- 200
X <- matrix(rnorm(n*2), n, 2)
X <- cbind(rep(1, n), X)
beta.t <- c(0.5, -1.0, 1.0)
X.beta.t <- X %*% beta.t
p.success <- exp(X.beta.t) / (1 + exp(X.beta.t))
y <- rbinom(n = n, size = 1, prob = p.success)


s <- cbind(1:10, 1:10)
d <- rdist(s)
diag(d) <- 0
rho <- 2
sigma.sq = 4
simple.cov.sp(D=d, sp.type="exponential", sp.par=c(sigma.sq, rho),
              error.var=0, finescale.var=0)

nu <- 0.7
simple.cov.sp(D=d, sp.type="matern", sp.par=c(sigma.sq, rho),
              error.var=0, smoothness = nu, finescale.var=0)

besselK(1, 0.7)
d[1, 2] / rho

cov.sp(s, sp.type="matern", sp.par = c(sigma.sq, rho), smoothness=0.7)
