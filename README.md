
<!-- README.md is generated from README.Rmd. Please edit that file -->

# codonopt

<!-- badges: start -->

[![R-CMD-check](https://github.com/mfansler/codonopt/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/mfansler/codonopt/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The `codonopt` package provides methods for computing optimality scores
for open reading frame sequences.

## Installation

You can install the development version of `codonopt` from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("mfansler/codonopt")
```

## Example

This is a basic example which showing how to compute a simple optimality
score.

``` r
library(codonopt)

score_fraction_optimal(as_codons("AUGUUAGAUUUAUAG"))
#> [1] 0.5
```
