#' Separate Strings
#'
#' @description split up strings based on a specific pattern.
#'
#' @param string A character vector.
#'
#' @param before Whether to separate the string before the pattern. if TRUE separation will be made before the pattern else separation will be made after the pattern.
#' @param pattern a pattern to use when splitting the string.
#' @param sep a character string to separate the terms
#'
#' @details if string have a length greater than one, the pattern supplied must be present in all element else it will return NA for strings with undetected pattern.
#' @return A character vector with separated values
#'
#' @export
#'
#' @examples
#' string <- c("productid", "customerid", "storeid")
#' str_separate(string, TRUE, pattern = "id", " ")
#'
str_separate <- function(string, before = TRUE, pattern, sep = "_") {

  if (missing(pattern)) {
    stop("argument pattern is missing ")
  }

  esc_punt <- c("?", "$", "(", ")", "+", ".", "^", "*", "|", "[", "]", "_", "\\", "s")

  if (pattern %in% esc_punt) {
    pattern <- stringr::str_glue("\\{pattern}")
  }

  pattern_loc <- stringr::str_locate(string, pattern)

  if (isTRUE(before)) {
    start_loc <- pattern_loc[, 1]

    first_part <- stringr::str_sub(string, 1, start_loc-1)
    second_part <- stringr::str_sub(string, start_loc, -1L)

  } else {
    end_loc <- pattern_loc[, 2]

    first_part <- stringr::str_sub(string, 1, end_loc)
    second_part <- stringr::str_sub(string, end_loc+1, -1L)
  }

  stringr::str_c(first_part, sep, second_part)
}

