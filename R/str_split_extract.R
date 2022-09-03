#' Extract the result of a positional split string
#' @description Split up a string into pieces and extract the results using a specific index position. Mathematically, you can interpret it as follows:
#'
#' Given a character string, \code{S}, extract the element at a given position, \code{k}, from the result of splitting \code{S} by a given pattern, \code{m}.
#' @param string Input vector. Either a character vector, or something coercible to one.
#' @param pattern Pattern to look for. This may also contain regular expression.
#' @param position Index position to return from the character vector.
#' @return A character vector.
#' @export
#' @examples
#' code <- c("HS-IB-EDE", "OG-OYO-CAS-0121", "NY-ILR-NIG-036")
#'
#' str_split_extract(code, "-", 1)
#'
#' str_split_extract(code, "-", 4)
#'
str_split_extract <- function(string, pattern, position) {
  if (missing(position)) {
    stop("Please specify the index of vector you want to extract.")
  } else {
    strhold1 <- stringr::str_split(string, pattern = pattern, simplify = TRUE)

    strhold2 <- strhold1[, position]

    dplyr::na_if(strhold2, "")
  }
}
