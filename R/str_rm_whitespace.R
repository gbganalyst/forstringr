#' Remove extra spaces in a data frame
#'
#' @description
#' \code{str_rm_whitespace_df()} removes all leading, trailing, and collapses multiple consecutive white spaces in non-numerical variables in a data frame.
#'
#' @param df A data frame or data frame extension (e.g. a tibble) with leading or trailing spaces.
#'
#' @return A clean data frame with no leading or trailing spaces.
#'
#' @export
#' @examples
#' richest_in_nigeria
#'
#' str_rm_whitespace_df(richest_in_nigeria)
#'
str_rm_whitespace_df <- function(df) {
  if (missing(df)) {
    stop("argument 'df' is missing, with no default")
  }

  if (!is.data.frame(df)) {
    stop("'df' must be a data frame object")
  } else {
    df %>% mutate(across(tidyselect::vars_select_helpers$where(is.character), stringr::str_squish))
  }
}
