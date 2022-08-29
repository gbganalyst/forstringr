test_that("str_mid() returns a segment of character strings", {
  expect_equal(str_mid("COVID-19", start = 2, n = 2), "OV")
  expect_equal(str_mid("a,b,c", start = 2, n = 2),  ",b")
})
