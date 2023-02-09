#' Codon Conversion
#' @rdname as_codons
#' @description Method for converting from DNA or RNA strings in various formats
#' to a set of codons.
#' @details This converts a sequence to a character vector of DNA triplets.
#' This function is not vectorized. Supported input types are \code{DNAString},
#' \code{RNAString}, and \code{character} vector.
#'
#' @param sequence an object representing a translatable sequence
#'
#' @return a character vector of DNA triplets
#' @export
#'
#' @importFrom methods setGeneric
setGeneric("as_codons", signature=c("sequence"),
           function(sequence) standardGeneric("as_codons")
)

#' @rdname as_codons
#'
#' @examples
#' orf <- Biostrings::DNAString("ATGAAATAG")
#' as_codons(orf)
#'
#' @importFrom Biostrings codons
#' @importFrom methods as
#' @export
setMethod("as_codons", "DNAString", function (sequence) {
    as(codons(sequence), "character")
})

#' @rdname as_codons
#'
#' @examples
#' rna <- Biostrings::RNAString("AUGAAAUAG")
#' as_codons(rna)
#'
#' @importFrom methods as
#' @export
setMethod("as_codons", "RNAString", function (sequence) {
    as_codons(as(sequence, "DNAString"))
})

#' @rdname as_codons
#'
#' @examples
#' rna <- "AUGAAAUAG"
#' as_codons(rna)
#'
#' dna <- "ATGAAATAG"
#' as_codons(dna)
#'
#' @importFrom Biostrings chartr
#' @importFrom methods as
#' @export
setMethod("as_codons", "character", function (sequence) {
    stopifnot(length(sequence) == 1)
    as_codons(as(chartr("Uu", "Tt", sequence), "DNAString"))
})
