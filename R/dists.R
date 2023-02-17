#'
#' @importFrom Biostrings GENETIC_CODE
.AA_CODON_MAP <- split(names(Biostrings::GENETIC_CODE), Biostrings::GENETIC_CODE)

#' Uniform Open Reading Frame Distribution
#' @rdname dist_uniforf
#' @description Implements a uniform distribution of possible open reading frames
#' conditioned on an amino acid sequence or open reading frame.
#'
#' @param sequence a \code{Biostrings::AAString} or translatable \code{Biostrings::DNAString}
#'   or \code{Biostrings::RNAString}
#' @param size integer number of samples to take
#'
#' @return a character vector of sampled open reading frames
#' @export
#'
#' @importFrom methods setGeneric
runiforf <- function(sequence, size=1) {
    orf_space <- .AA_CODON_MAP[as_amino_acids(sequence)]
    replicate(size, paste0(sapply(orf_space, sample, size=1), collapse=""))
}
