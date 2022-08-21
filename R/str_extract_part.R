#' Extract strings before or after a particular pattern.
#'
#' @param string A character vector.
#' @param part The string position to extract. must be 'before' or 'after'.
#' @param pattern Pattern to use as boundary.
#'
#' @return A subset of the input vector.
#' @export
#'
#' @examples
#' weekdays <- c("Today_Monday", "Today_Tuesday", "Today_Wednesday", "Today_Thursday",
#'  "Today_Friday", "Today_Saturday", "Today_Sunday")
#' str_extract_part(weekdays, "after", "_")
#'
#' # Convert to Number
#' str_extract_part(c("$159", "$587", "$897"), "after", "$") |>
#'  as.numeric()
str_extract_part <- function(string, part, pattern) {
  part <- match.arg(part, c("before", "after"))

  if (missing(pattern)) {
    stop("argument `pattern` is missing ")
  }

  esc_punt <- c("?", "$", "(", ")", "+", ".", "^", "*", "|")

  if (pattern %in% esc_punt) {
    pattern <- stringr::str_glue("\\{pattern}")
  }

  tryCatch(
    expr = {
      if (part == "before") {
        regex_pattern <- stringr::str_glue("^.*(?={pattern})")

        stringr::str_extract(string = string, pattern = regex_pattern)

      } else if (part == "after") {
        regex_pattern <- stringr::str_glue("(?<={pattern}).*$")

        stringr::str_extract(string = string, pattern = regex_pattern)
      }
    },

    error = \(e) stop(stringr::str_glue("can't handle {pattern} pattern"))
  )
}
