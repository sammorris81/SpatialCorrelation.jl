# SpatialCorrelation
Easy to use functions to generate commonly used spatial covariance matrices. Current functions include `exponential()`, `exponential!()`, `matern()`, and `matern!()`.

## Generate an exponential covariance matrix
To generate an exponential covariance matrix, use the function `exponential(d, σ², ϕ)` where
-`d`: is a matrix of distances
-`σ²`: is the partial sill
-`ϕ`: is the spatial range.

This function will return `Σ`, an exponential covariance matrix. To modify `Σ` in place, use `exponential!(Σ, d, σ², ϕ)`.

## Generate a Matérn covariance matrix
To generate a Matérn covariance matrix, use the function `matern(d, σ², ν, ϕ)` where
-`d`: is a matrix of distances
-`σ²`: is the partial sill
-`ν`: is the smoothness
-`ϕ`: is the spatial range

This function returns `Σ`, a Matérn covariance matrix. To modify `Σ` in place, use `matern!(Σ, d, σ², ν, ϕ)`.
