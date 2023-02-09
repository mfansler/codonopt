#' Extract specific CSC data
#'
#' @param assay character of experiment code
#'
#' @return A named numeric vector.
#'
#' @importFrom stats setNames
#'
#' @seealso df_csc
#' @seealso csc_default
.get_csc <- function(assay='K562_SLAM') {
    name <- df_csc[['codon']]
    value <- df_csc[[assay]]
    setNames(value, name)
}

.csc_x293t_endo <- function() { .get_csc(assay='X293T_endo') }
.csc_hela_endo <- function() { .get_csc(assay='HeLa_endo') }
.csc_rpe_endo <- function() { .get_csc(assay='RPE_endo') }
.csc_x293t_orfome <- function() { .get_csc(assay='X293T_ORFome') }
.csc_k562_orfome <- function() { .get_csc(assay='K562_ORFome') }
.csc_k562_slam <- function() { .get_csc(assay='K562_SLAM') }

#' Codon Stability Coefficients
#'
#' Codon stability coefficients (CSCs) objects.
#'
#'
#' @return A named numeric vector.
#' \describe{
#'   \item{names}{Codons (DNA triplets)}
#'   \item{values}{CSCs for K562_ORFome}
#' }
#' @export
#'
#' @examples
#' csc_default()
#' csc_k562_orfome()
csc_default <- function() { csc_k562_slam() }

#' @rdname csc_default
#' @export
csc_hela_endo <- memoise::memoise(.csc_hela_endo)

#' @rdname csc_default
#' @export
csc_k562_orfome <- memoise::memoise(.csc_k562_orfome)

#' @rdname csc_default
#' @export
csc_k562_slam <- memoise::memoise(.csc_k562_slam)

#' @rdname csc_default
#' @export
csc_rpe_endo <- memoise::memoise(.csc_rpe_endo)

#' @rdname csc_default
#' @export
csc_x293t_endo <- memoise::memoise(.csc_x293t_endo)

#' @rdname csc_default
#' @export
csc_x293t_orfome <- memoise::memoise(.csc_x293t_orfome)
