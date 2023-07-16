#' Dynamic plot labels using glue operators
#' @description
#' `str_englue()` helps you solve the labeling problem during plotting. For example, any value wrapped in `{ }` will be inserted into the string and it can also understands embracing, `{{ }}`, which automatically inserts a given variable name.
#'
#' @inheritParams rlang::englue
#' @importFrom glue glue
#' @import rlang
#'
#' @seealso
#' [rlang::englue()]
#'
#' @export
#'
#' @examples
#' \donttest{
#' library(ggplot2)
#'
#' histogram_plot <- function(df, var, binwidth) {
#'    ggplot(df, aes(x = {{ var }})) +
#'    geom_histogram(binwidth = binwidth) +
#'    labs(title = str_englue("A histogram of {{var}} with binwidth {binwidth}"))
#' }
#'
#' histogram_plot(iris, Sepal.Length, binwidth = 0.1)
#' }
#'
str_englue <- function(x, env, error_call, error_arg) englue(x, env = caller_env(), error_call = current_env(), error_arg = "x")


