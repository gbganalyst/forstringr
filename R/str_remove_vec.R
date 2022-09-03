# str_remove_vec is not a propose name, just for example

str_remove_vec <- function(string, patterns) {
  esc_punt <- c("?", "$", "(", ")", "+", ".", "^", "*", "|", "[", "_", "s", "\\")

  if (any(patterns %in% esc_punt)) {
    # extract all patterns in esc_punt
    pt <- patterns[patterns %in% esc_punt]

    # add \\ to all values in pt
    pt <- str_glue("\\{pt}")

    # combine pt with other patterns
    patterns <- c(patterns[!patterns %in% esc_punt], pt)
  }

  # join all patterns supplied as a vector and seperate them with `|`
  # e.g c('$', '%') = '\\$|%'
  regex_pattern <- paste0(patterns, collapse = "|")

  stringr::str_remove_all(string = string, pattern = regex_pattern)
}

# comorbidity <- c("[kidney disease]", "[neuropathy]", NA, "[sexual dysfunction]",
#                  "[hypertension]", "[hypertension]", NA, "[hypertension]",
#                  "[hypertension]", "[retinopathy]",
#                  "[heart disease/chest pain/ecg abnormalities/echo abnormalities]",
#                  "[sexual dysfunction]", NA, "[hypertension:]",
#                  "[hypertension:null]")

# str_remove_vec(comorbidity, c("[", "]", ":"))
#
# str_remove_vec(comorbidity, c("[", "]", ":"))
