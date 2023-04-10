test_that("str_extract_part() returns only strings before the % sign", {
  expect_equal(
    str_extract_part(string = c("5%", "92%", "75%"), pattern =  "%", before = TRUE),
    c("5", "92", "75")
  )
})

test_that("str_extract_part() return only strings after -", {
  expect_equal(
    str_extract_part(string = c("Good-Morning", "Good-Afternoon"), pattern =  "-", before = FALSE),
    c("Morning", "Afternoon")
  )
})
