test_that("str_left() returns a substring from the end of a specified string", {
  expect_identical(str_right("COVID-19", n = 2), "19")
  expect_equal(str_right("a,b,c"), "c")
})
