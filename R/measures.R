#' Score for Fraction of Optimal Codons
#'
#' @description
#' `r lifecycle::badge("experimental")`
#' Computes the fraction of codons with a codon stability score greater than zero.
#'
#' @param sequence a character vector with DNA triplets
#' @param csc a named numeric
#'
#' @return a numeric value in \[0,1\]
#' @export
#'
#' @examples
#' codons <- c("ATG", "TTA", "GAT", "TTA", "TAG")
#' score_fraction_optimal(codons)
#'
#' score_fraction_optimal(as_codons("AUGUUAGAUUUAUAG"))
score_fraction_optimal <- function (sequence, csc=csc_default()) {
    mean(csc[sequence] > 0, na.rm=TRUE)
}

#' Score for Mean Codon Stability Coefficient
#'
#' @description
#' `r lifecycle::badge("experimental")`
#' Computes the mean codon stability score for a sequence.
#'
#' @param sequence a character vector with DNA triplets
#' @param csc a named numeric
#'
#' @return a numeric value in \[0,1\]
#' @export
#'
#' @examples
#' codons <- c("ATG", "TTA", "GAT", "TTA", "TAG")
#' score_mean_csc(codons)
#'
#' score_mean_csc(as_codons("AUGUUAGAUUUAUAG"))
score_mean_csc <- function (sequence, csc=csc_default()) {
    mean(csc[sequence], na.rm=TRUE)
}
