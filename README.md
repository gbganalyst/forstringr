
<!-- README.md is generated from README.Rmd. Please edit that file -->

# forstringr <a><img src='man/figures/logo.png' align="right" height="138.5" /></a>

<!-- badges: start -->

[![R-CMD-check](https://github.com/gbganalyst/forstringr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/gbganalyst/forstringr/actions/workflows/R-CMD-check.yaml)
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/forstringr)](https://cran.r-project.org/package=forstringr)
[![metacran
downloads](https://cranlogs.r-pkg.org/badges/grand-total/forstringr)](https://cran.r-project.org/package=forstringr)
[![Codecov test
coverage](https://codecov.io/gh/gbganalyst/forstringr/branch/main/graph/badge.svg)](https://app.codecov.io/gh/gbganalyst/forstringr?branch=main)
<!-- badges: end -->

## About the package

The string (or character) data type typically requires more manipulation
to be helpful for data analysts. Thus, there is a need for a robust
package that is up to the task. **forstringr** is a new package built on
top of ‘stringr’ to execute various string manipulations in R
programming. The main aim of ‘forstringr’ is to simplify string
manipulation for R beginners. This package combines its power with the
adaptability of other manipulation tools such as tidyr and dplyr. Like
in the stringr package, most functions in `forstringr` begin with
`str_`. For a quick video tutorial, I gave a talk at the Africa R users
meetup, which you can find [here](https://r4africa.org/event/1sept2022).

## Installation

You can install the `forstringr` package from
[CRAN](https://cran.r-project.org/) with:

``` r
install.packages("forstringr")
```

or the development version from [GitHub](https://github.com/) with

``` r
if(!require("devtools")){
 install.packages("devtools")
}

devtools::install_github("gbganalyst/forstringr")
```

## Usage

Now that you have installed `forstringr` package, you can simply load it
by using:

``` r
library(forstringr)
```

To get started with `forstringr`, read the
[doc](https://gbganalyst.github.io/forstringr/articles/index.html).
