#' Score for Fraction of Optimal Codons
#'
#' @param sequence a character vector with DNA triplets
#' @param csc a named numeric
#'
#' @return a numeric value in [0,1]
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
