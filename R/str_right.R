#' Returns a substring from the end of a specified string
#'
#' @description Given a character vector, \code{str_right()} returns the right side of a string.
#' @param string The character from which the right portion will be returned.
#' @param n Optional. The number of        characters to return from the right side of string.
#'
#' @return A character vector.
#'
#' @seealso
#' [str_left()] which extracts characters from the left and [str_mid()] which returns a segment of character strings.
#'
#' @export
#'
#' @examples
#' str_right("Sale Price")
#'
#' str_right("Sale Price", n = 5)
#'
str_right <- function(string, n = 1) {
  if (missing(string)) {
    stop("argument 'string' is missing, with no default")
  } else {
    substr(string, nchar(string) - (n - 1), nchar(string))
  }
}
