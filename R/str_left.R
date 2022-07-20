#' Returns a substring from the beginning of a specified string
#'
#' @description Given a character vector, \code{str_left()} returns the left side of a string.
#'
#' @param string The character from which the left portion will be returned.
#' @param n Optional. The number of characters to return from the left side of string
#'
#' @return A character vector
#'
#' @seealso
#'
#' [str_right()] which extracts characters from the right and [str_mid()] which returns a segment of character strings.
#'
#' @author Ezekiel Ogundepo (gbganalyst@@gmail.com)
#'
#' @export
#'
#' @examples
#' str_left("Nigeria")
#' str_left("Nigeria", n = 3)
#' str_left(c("Female", "Male", "Male", "Female"))
#'
#'
str_left <- function(string, n = 1) {
  substr(string, 1, n)
}
