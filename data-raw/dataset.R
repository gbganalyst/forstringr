## code to prepare `DATASET` dataset goes here

richest_in_nigeria <- readr::read_csv("data-raw/top_10_nig.csv")

usethis::use_data(richest_in_nigeria, overwrite = TRUE)
