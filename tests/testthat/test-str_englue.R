g <- function(var) str_englue("{{ var }}")


test_that("str_englue() automatically inserts a given variable name using a glue operator {{}}", {
  expect_equal(g(cyl), "cyl")
})

