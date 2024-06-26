% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/measures.R
\name{score_fraction_optimal}
\alias{score_fraction_optimal}
\title{Score for Fraction of Optimal Codons}
\usage{
score_fraction_optimal(sequence, csc = csc_default())
}
\arguments{
\item{sequence}{a character vector with DNA triplets}

\item{csc}{a named numeric}
}
\value{
a numeric value in [0,1]
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}}
Computes the fraction of codons with a codon stability score greater than zero.
}
\examples{
codons <- c("ATG", "TTA", "GAT", "TTA", "TAG")
score_fraction_optimal(codons)

score_fraction_optimal(as_codons("AUGUUAGAUUUAUAG"))
}
