test_that("length_omit_na() counts only non-missing elements of a vector", {
  expect_equal(length_omit_na(c("Nigeria", "South Africa", "Kenya", NA, "Rwanda")), 4)
  expect_equal(length(c("Nigeria", "South Africa", "Kenya", NA, "Rwanda")), 5)
})
