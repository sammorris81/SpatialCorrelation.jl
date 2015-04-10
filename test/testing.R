rm(list=ls())
options(warn=2)
library(fields)
library(SpatialTools)

ns <- 300
s <- cbind(1:ns, 1:ns)
d <- rdist(s)
diag(d) <- 0
rho <- 2
sigma.sq = 4
nu <- 0.6

tic <- proc.time()[3]
for (i in 1:500) {
  simple.cov.sp(D=d, sp.type="exponential", sp.par=c(sigma.sq, rho),
              error.var=0, finescale.var=0)
}
toc <- proc.time()[3]
toc - tic

tic <- proc.time()[3]
for (i in 1:500) {
  simple.cov.sp(D=d, sp.type="matern", sp.par=c(sigma.sq, rho),
              error.var=0, smoothness = nu, finescale.var=0)
}
toc <- proc.time()[3]
toc - tic

