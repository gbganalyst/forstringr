
<!-- README.md is generated from README.Rmd. Please edit that file -->

# forstringr

<!-- badges: start -->
<!-- badges: end -->

The goal of **forstringr** is to enable complex string manipulation in
R. The package combines the power of stringr with other manipulation
packages such as dplyr and tidyr. Just like in the stringr package,
every function in forstringr begins with `str_`.

## Installation

You can install the development version of `forstringr` from
[GitHub](https://github.com/) with

``` r
devtools::install_github("gbganalyst/forstringr")
```

## `str_left()`

Given a character vector, `str_left()` returns the left side of a
string. For examples:

``` r
library(forstringr)

str_left("Nigeria")
#> [1] "N"

str_left("Nigeria", n = 3)
#> [1] "Nig"

str_left(c("Female", "Male", "Male", "Female"))
#> [1] "F" "M" "M" "F"
```

## `str_right()`

Given a character vector, `str_right()` returns the right side of a
string. For examples:

``` r

str_right("July 20, 2022", 4)
#> [1] "2022"

str_right("Sale Price", n = 5)
#> [1] "Price"
```

## `str_mid()`

Like in Microsoft Excel, the `str_mid()`returns a specific number of
characters from a text string, starting at the position you specify,
based on the number of characters you select.

``` r
str_mid("Super Eagle", 7, 5)
#> [1] "Eagle"

str_mid("Oyo Ibadan", 5, 6)
#> [1] "Ibadan"
```

## `str_split_extract()`

If you want to split up a string into pieces and extract the results
using a specific index position, then, you will use
`str_split_extract()`. You can interpret it as interpret it as follows:

Given a character string, `S`, extract the element at a given position,
`k`, from the result of splitting `S` by a given pattern, `m`. For
example:

``` r
top_10_richest_nig <- c("Aliko Dangote", "Mike Adenuga ", "Femi Otedola", "Arthur Eze", "Abdulsamad Rabiu", "Cletus Ibeto", "Orji Uzor Kalu", "ABC Orjiakor", "Jimoh Ibrahim", "Tony Elumelu")

first_name <- str_split_extract(top_10_richest_nig, " ", 1)

first_name
#>  [1] "Aliko"      "Mike"       "Femi"       "Arthur"     "Abdulsamad"
#>  [6] "Cletus"     "Orji"       "ABC"        "Jimoh"      "Tony"
```
