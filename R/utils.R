#' @rdname as_codons
#' @param sequence an object representing a translatable sequence
#'
#' @return a character vector of DNA triplets
#' @export
#'
#' @importFrom methods setGeneric
setGeneric("as_codons", signature=c("sequence"),
           function(sequence) standardGeneric("as_codons")
)


#' Codon Conversion
#' @rdname as_codons
#' @param sequence a \code{DNAString} object
#'
#' @return a character vector of DNA triplets
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

#' Codon Conversion
#' @rdname as_codons
#' @param sequence a \code{RNAString} object
#'
#' @return a character vector of DNA triplets
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

#' Codon Conversion
#' @rdname as_codons
#' @param sequence a \code{character} object of length 1
#'
#' @return a character vector of DNA triplets
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

