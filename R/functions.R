stable <- function(...) knitr::kable(escape = FALSE, ...) |>
  kableExtra::kable_styling(latex_options = "hold_position")
