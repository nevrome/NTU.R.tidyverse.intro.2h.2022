library(magrittr)

peng <- palmerpenguins::penguins

peng_with_id <- peng %>%
  tibble::add_column(., id = 1:nrow(.), .before = "species")

peng_with_id %>%
  dplyr::slice_sample(n = 300) %>%
  dplyr::arrange(id) %>%
  dplyr::select(-bill_length_mm, -bill_depth_mm) %>%
  readr::write_csv("data/penguins.csv")

peng_with_id %>%
  dplyr::slice_sample(n = 300) %>%
  dplyr::arrange(id) %>%
  dplyr::select(id, bill_length_mm, bill_depth_mm) %>%
  readr::write_csv("data/penguin_bills_2009.csv")
