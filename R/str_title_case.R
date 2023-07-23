#' Convert string to title case
#'
#' @description
#'
#' `str_title_case()` converts string to title case, capitalizing only the first letter of each word while ignoring articles, prepositions, and conjunctions
#'
#' @details
#' Please note that `str_title_case()` is different from [stringr::str_to_title()] which converts to title case, where only the first letter of each word is capitalized.
#'
#' @inheritParams stringr::str_to_title
#'
#' @return
#' A character vector the same length as the string and in title case.
#'
#' @export
#'
#' @examples
#'
#' words <- "the quick brown fox jumps over a lazy dog"
#'
#' str_title_case(words)
#'
#' str_to_title(words)
#'
#' words <- "A journey through the history of music"
#'
#' str_title_case(words)
#'
#' str_to_title(words)
#'
#'
str_title_case <- function(string) {
  # Define a list of articles to be ignored in title case

  articles <- c("a", "an", "the")

  prepositions <- c("aboard", "about", "above", "across", "after", "against", "along", "amid", "among", "around", "as", "at", "before", "behind", "below", "beneath", "beside", "between", "beyond", "but", "by", "concerning", "considering", "despite", "down", "during", "except", "for", "from", "in", "inside", "into", "like", "near", "of", "off", "on", "onto", "out", "outside", "over", "past", "regarding", "round", "save", "since", "through", "throughout", "to", "toward", "under", "underneath", "until", "unto", "up", "upon", "with", "within", "without")

  conjunctions <- c("after", "although", "and", "as", "as if", "as long as", "as much as", "as soon as", "as though", "because", "before", "but", "even if", "even though", "for", "how", "if", "in order that", "lest", "neither", "nor", "now", "once", "only if", "or", "provided", "rather than", "since", "so", "supposing", "than", "that", "though", "till", "unless", "until", "when", "whenever", "where", "whereas", "wherever", "whether", "while", "yet")


  ignored_strings <- c(articles, prepositions, conjunctions)

  # Split the input string into words
  words <- strsplit(string, "\\s")[[1]]

  # Convert the first letter of each word to uppercase

  words <- str_to_title(words)

  # Capitalize articles only if they are not the first word
  for (i in seq_along(words)) {
    if (i > 1 && tolower(words[i]) %in% ignored_strings) {
      words[i] <- tolower(words[i])
    }
  }

  # Combine the words into a single string
  output_string <- paste(words, collapse = " ")

  return(output_string)
}
