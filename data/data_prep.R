library(magrittr)

peng <- palmerpenguins::penguins

peng_with_id <- peng %>%
  tibble::add_column(., id = 1:nrow(.), .before = "species")

peng_with_id %>%
  dplyr::select(-bill_length_mm, -bill_depth_mm) %>%
  readr::write_csv("data/penguins.csv")

peng_with_id %>%
  dplyr::filter(year == 2009) %>%
  dplyr::select(id, bill_length_mm, bill_depth_mm) %>%
  readr::write_csv("data/penguin_bills_2009.csv")