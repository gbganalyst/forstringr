test_that("str_extract_part() returns only strings before the % sign", {
  expect_equal(
    str_extract_part(c("5%", "92%", "75%"), TRUE, "%"),
    c("5", "92", "75")
  )
})

test_that("str_extract_part() return only strings after -", {
  expect_equal(
    str_extract_part(c("Good-Morning", "Good-Afternoon"), FALSE, "-"),
    c("Morning", "Afternoon")
  )
})
