test_that("str_left() returns the left side of a string", {
  expect_equal(str_left("COVID-19", n = 5), "COVID")
  expect_equal(str_left("a,b,c"), "a")
})
