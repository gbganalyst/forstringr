## Code for preparing `DATASET` in the package

install.load::install_load(c("tidyverse", "googlesheets4"))

richest_in_nigeria <- tribble(
  ~Rank,              ~Name,     ~`Net worth`, ~Age,                     ~`Source of Wealth`,
  1,    " Aliko Dangote",  "$14 Billion",  64,                    "  Cement and Sugar ",
  2,     "Mike Adenuga", "$7.9  Billion ",  68,     "Telecommunication,    Oil,   and Gas",
  3,     "Femi   Otedola", "$5.9   Billion",  59,                         "Oil  and Gas",
  4,       " Arthur Eze",   "$5 Billion",  73,                         "Oil and Gas",
  5, "Abdulsamad     Rabiu", "$3.7 Billion",  61,                    "Cement   and Sugar",
  6,     " Cletus Ibeto ", " $3.5 Billion",  69,             "Automobile, Real Estate ",
  7,   "Orji Uzor Kalu", "$3.2 Billion",  61,               "Furniture,    Publishing ",
  8,     "ABC Orjiakor ", "  $1.2 Billion",  63,                         "Oil and Gas",
  9,    "  Jimoh Ibrahim",   "$1 Billion ",  54, "Insurance, Oil and Gas, Real Estate",
  10,     "Tony   Elumelu", "$900    Million",  58,                             "  Banking  "
)


usethis::use_data(richest_in_nigeria, overwrite = TRUE)


community_data <- read_sheet("https://docs.google.com/spreadsheets/d/1FueVsiWSN3uft_EYZeuX1FxMsZ0_jz2IzkIbdN53g2c", sheet = "data4pkg", trim_ws = FALSE, col_types = "Dccccdcc")


usethis::use_data(community_data, overwrite = TRUE)
