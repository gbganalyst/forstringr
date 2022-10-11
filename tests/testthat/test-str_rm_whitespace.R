test_that("str_rm_whitespace_df() function", {
  clean_data <- read.csv(test_path("richest_in_nigeria_clean.csv"), check.names = FALSE)

  expect_equal(str_rm_whitespace_df(richest_in_nigeria), clean_data, ignore_attr = TRUE)
})
