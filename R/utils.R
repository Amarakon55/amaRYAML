library(knitr)
library(kableExtra)

indent <- function(data) {
  kable(data, booktabs = TRUE, col.names = NULL) %>% 
  kable_styling(full_width = TRUE, position = "left") %>%
  column_spec(1, width = "5em" ) %>%
  sub("\\\\toprule", "", .) %>%
  sub("\\\\bottomrule", "", .)
}
