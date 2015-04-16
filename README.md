# SpatialCorrelation

Functions to generate commonly used spatial covariance matrices in Julia. Current functions include `exponential()`, `matern()`, and `spherical()`.

## Installation

```julia
Pkg.clone("https://github.com/sammorris81/SpatialCovariances.jl.git")
```

## Generate an exponential covariance matrix

To generate an exponential covariance matrix, use the function `exponential(D, σ², ϕ)` where
- `D`: is a matrix of distances
- `σ²`: is the partial sill
- `ϕ`: is the spatial range.

This function will return `Σ`, an exponential covariance matrix. To modify `Σ` in place, use `exponential!(Σ, D, σ², ϕ)`.

## Generate a Matérn covariance matrix

To generate a Matérn covariance matrix, use the function `matern(D, σ², ϕ, ν)` where
- `D`: is a matrix of distances
- `σ²`: is the partial sill
- `ϕ`: is the spatial range
- `ν`: is the smoothness

This function returns `Σ`, a Matérn covariance matrix. To modify `Σ` in place, use `matern!(Σ, D, σ², ϕ, ν)`.

## Generate a spherical covariance matrix

To generate a spherical covariance matrix, use the function `spherical(D, σ², ϕ)` where
- `D`: is a matrix of distances
- `σ²`: is the partial sill
- `ϕ`: is the spatial range.

This function will return `Σ`, a spherical covariance matrix. To modify `Σ` in place, use `spherical!(Σ, D, σ², ϕ)`.
