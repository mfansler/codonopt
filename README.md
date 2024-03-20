
<!-- README.md is generated from README.Rmd. Please edit that file -->

# codonopt

<!-- badges: start -->

[![R-CMD-check](https://github.com/mfansler/codonopt/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/mfansler/codonopt/actions/workflows/R-CMD-check.yaml)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![DOI](https://zenodo.org/badge/599736124.svg)](https://zenodo.org/doi/10.5281/zenodo.10845962)
<!-- badges: end -->

The `codonopt` package provides methods for sampling from the possible
codons of an amino acid sequence and for computing optimality scores for
open reading frame sequences.

## Installation

You can install the development version of `codonopt` from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("mfansler/codonopt")
```

## Example

This is a basic example which shows how to compute a simple optimality
score.

``` r
library(codonopt)

score_fraction_optimal(as_codons("AUGUUAGAUUUAUAG"))
#> [1] 0.5
```
