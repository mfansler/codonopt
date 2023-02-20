#' Codon Stabilization Coefficients
#'
#' @description
#' `r lifecycle::badge("experimental")`
#' Table of codon stabilization coefficients (CSCs) as reported by
#' <https://doi.org/10.7554/eLife.45396>.
#'
#' @format
#' A data frame.
#' \describe{
#'   \item{codon}{Codons (DNA triplets)}
#'   \item{aa_code}{Amino acid 3-letter codes}
#'   \item{X293T_endo}{CSC for X293T cells}
#'   \item{HeLa_endo}{CSC for HeLa cells}
#'   \item{RPE_endo}{CSC for RPE cells}
#'   \item{X293T_ORFome}{CSC for X293T cells}
#'   \item{K562_ORFome}{CSC for K562 cells}
#'   \item{K562_SLAM}{CSC for K562 cells}
#'   \item{genome}{Codon counts in genome}
#'   \item{transcriptome}{Codon counts weighted by gene RPKM}
#' }
#' @source https://doi.org/10.7554/eLife.45396.006
"df_csc"
