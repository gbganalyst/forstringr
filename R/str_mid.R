#' Returns a segment of character strings
#' @description \code{str_mid()} returns a specific number of characters from a text string, starting at the position you specify, based on the number of characters you specify.
#' @param string The text string containing the characters you want to extract.
#' @param start The position of the first character you want to extract in the text. The first character in text has \code{start = 1}, and so on.
#' @param n The length of character to extract.
#'
#' @return A character vector.
#'
#' @seealso
#' [str_left()] which extracts characters from the left and [str_right()] which extracts characters from the right.
#'
#' @export
#'
#' @examples
#' str_mid("Super Eagle", 7, 5)
#'
#' str_mid("Oyo Ibadan", 5, 6)
#'
str_mid <- function(string, start, n) {
  substr(x = string, start = start, stop = start + n - 1)
}
