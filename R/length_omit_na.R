#' Length of an object
#' @description \code{length_omitna()} counts only non-missing elements of a vector.
#'
#' @param x Input vector. Either a vector, or something coercible to one.
#'
#' @return An integer
#' @importFrom stats na.omit
#' @export
#' @seealso
#' [length()] counts all the elements in a vector including those that are missing ([NA]s).
#'
#' @examples
#'
#' ethnicity <- c("Hausa", NA, "Yoruba", "Igbo", NA, "Fulani", "Kanuri", "Others")
#'
#' length_omit_na(ethnicity)
#'
#' length(ethnicity)
#'
length_omit_na <- function(x) {
  length(na.omit(x))
}
