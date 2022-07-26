% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/str_right.R
\name{str_right}
\alias{str_right}
\title{Returns a substring from the end of a specified string}
\usage{
str_right(string, n = 1)
}
\arguments{
\item{string}{The character from which the right portion will be returned.}

\item{n}{Optional. The number of        characters to return from the right side of string.}
}
\value{
A character vector.
}
\description{
Given a character vector, \code{str_right()} returns the right side of a string.
}
\examples{
str_right("Sale Price")

str_right("Sale Price", n = 5)

}
\seealso{
\code{\link[=str_left]{str_left()}} which extracts characters from the left and \code{\link[=str_mid]{str_mid()}} which returns a segment of character strings.
}
