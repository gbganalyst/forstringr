test_that("str_split_extract() split up a string into pieces and extract the results using a specific index position", {
  expect_equal(
    str_split_extract(c("Oyo-Ibadan", "Lagos-Ikeja", "Kwara-Ilorin"), pattern = "-", 2),
    c("Ibadan", "Ikeja", "Ilorin")
  )
})

