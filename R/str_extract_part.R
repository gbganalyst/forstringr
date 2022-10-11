#' Extract strings before or after a given pattern
#' @description Vectorised over string and pattern.
#'
#' @param string A character vector.
#'
#' @param before The position in the string to extract from. If TRUE, the extract will occur before the pattern; if FALSE, it will happen after the pattern.
#'
#' @param pattern Pattern to look for.
#'
#' @return A subset of the input vector.
#' @seealso
#'
#' [str_split_extract()] which splits up a string into pieces and extract the results using a specific index position.
#'
#' @export
#'
#' @examples
#'
#' weekdays <- c(
#'   "Monday_1", "Tuesday_2", "Wednesday_3", "Thursday_4",
#'   "Friday_5", "Saturday_6", "Sunday_7"
#' )
#'
#' str_extract_part(weekdays, before = TRUE, pattern = "_")
#'
#' str_extract_part(c("$159", "$587", "$897"), before = FALSE, pattern = "$")
#'
str_extract_part <- function(string, before = TRUE, pattern) {
  before <- before

  if (missing(pattern)) {
    stop("argument `pattern` is missing ")
  }

  esc_punt <- c("?", "$", "(", ")", "+", ".", "^", "*", "|", "[", "]", "_", "\\", "/", "s")

  if (pattern %in% esc_punt) {
    pattern <- stringr::str_glue("\\{pattern}")
  }

  tryCatch(
    expr = {
      if (before == TRUE) {
        regex_pattern <- stringr::str_glue("^.*(?={pattern})")

        stringr::str_extract(string = string, pattern = regex_pattern)
      } else if (before == FALSE) {
        regex_pattern <- stringr::str_glue("(?<={pattern}).*$")

        stringr::str_extract(string = string, pattern = regex_pattern)
      }
    },
    error = \(e) stop(stringr::str_glue("can't handle {pattern} pattern"))
  )
}
