#' Dynamic plot labels using glue operators
#' @description
#' `str_englue()` helps you solve the labeling problem during plotting. For example, any value wrapped in `{ }` will be inserted into the string and it can also understands embracing, `{{ }}`, which automatically inserts a given variable name.
# Suppress R CMD check note for glue package (not use but   imported for rland)
#' @importFrom glue glue
#' @inheritParams rlang::englue
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 aes
#' @importFrom ggplot2 geom_histogram
#' @importFrom ggplot2 labs
#' @import rlang
#'
#' @seealso
#' [rlang::englue()]
#'
#' @export
#'
#' @examples
#' histogram_plot <- function(df, var, binwidth) {
#'  df |>
#'    ggplot(aes(x = {{ var }})) +
#'    geom_histogram(binwidth = binwidth) +
#'    labs(title = str_englue("A histogram of {{var}} with binwidth {binwidth}"))
#'}

#' iris |> histogram_plot(Sepal.Length, binwidth = 0.1)

str_englue <- function(x, env, error_call, error_arg) englue(x, env = caller_env(), error_call = current_env(), error_arg = "x")

