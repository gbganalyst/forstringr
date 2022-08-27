#' Extract strings before or after a particular pattern
#'
#' @description
#' @param string A character vector.
#' @param before The position in the string to extract from. If TRUE, the extract
#' will occur before the pattern; if FALSE, it will happen after the pattern.
#' @param pattern pattern Pattern to look for.
#'
#' @return A subset of the input vector.
#' @export
#'
#' @examples
#' weekdays <- c("Monday_1", "Tuesday_2", "Wednesday_3", "Thursday_4",
#'  "Friday_5", "Saturday_6", "Sunday_7")
#' str_extract_part(weekdays, "after", "_")
#'
#' # Convert to Numeric
#' str_extract_part(c("$159", "$587", "$897"), "after", "$") %>%
#'  as.numeric()
#'
str_extract_part <- function(string, before, pattern) {
  part <- match.arg(part, c("before", "after"))

  if (missing(pattern)) {
    stop("argument `pattern` is missing ")
  }

  esc_punt <- c("?", "$", "(", ")", "+", ".", "^", "*", "|", "[", "_", "s", "\\")

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


# Multiple pattern as a vector ================================================|
# explore how it works
str_extract_part2 <- function(string, before, pattern) {
  if (missing(pattern)) {
    stop("argument `pattern` is missing ")
  }
  esc_punt <- c("?", "$", "(", ")", "+", ".", "^", "*", "|", "[", "_", "s", "\\")

  if (any(pattern %in% esc_punt)) {
    pt <- pattern[pattern %in% esc_punt]
    pt <- str_glue("\\{pt}")
    pattern <- c(pattern[!pattern %in% esc_punt], pt)
  }

  tryCatch(
    expr = {
      if (isTRUE(before)) {
        ext_list <- lapply(pattern, function(.x) {
          stringr::str_extract(string = string,
                               pattern = stringr::str_glue("^.*(?={.x})"))
        })
        ext_list <- purrr::transpose(ext_list)

        purrr::map_chr(seq_len(length(string)), function(.x) {
          ext_c <- unlist(ext_list[[.x]])
          ext_c[!is.na(ext_c)][1]
        })

      } else if (isFALSE(before)) {
        ext_list <- lapply(pattern, function(.x) {
          stringr::str_extract(string = string,
                               pattern = stringr::str_glue("(?<={.x}).*$"))
        })
        ext_list <- purrr::transpose(ext_list)

        purrr::map_chr(seq_len(length(string)), function(.x) {
          ext_c <- unlist(ext_list[[.x]])
          ext_c[!is.na(ext_c)][1]
        })
      }
    },

    # needs a better error message ------------------------------- /!\
    error = function(e) {
      p_message <- ifelse(length(pattern) == 1,
                          pattern,
                          paste(pattern, collapse = ", "))

      stop(stringr::str_glue("can't handle {p_message} pattern"))
    }
  )
}

# Run Example
# c("1_Monday", "2!Tuesday", "3%Wednesday", "4!Thursday", "5_Friday", "6_Saturday",
#   "7%Sunday") |>
#   str_extract_part2(FALSE, c("_", "!", "%"))



