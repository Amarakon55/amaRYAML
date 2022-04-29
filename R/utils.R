indent <- function(data) {
  knitr::kable(data, booktabs = TRUE, col.names = NULL) %>% 
  kableExtra::kable_styling(full_width = TRUE, position = "left") %>%
  kableExtra::column_spec(1, width = "5em" ) %>%
  sub("\\\\toprule", "", .) %>%
  sub("\\\\bottomrule", "", .)
}
