#' @export
kabularx <- function(..., escape = FALSE, booktabs = TRUE, linesep = "\\addlinespace") knitr::kable(tabular = "tabularx",
  escape = escape, booktabs = booktabs, linesep = linesep, ...) |>
  kableExtra::kable_styling(latex_options = "hold_position")

#' @export
xlkabular <- function(..., escape = FALSE, booktabs = TRUE, linesep = "\\addlinespace") knitr::kable(tabular = "xltabular",
  escape = escape, booktabs = booktabs, linesep = linesep, ...) |>
  kableExtra::kable_styling(latex_options = "repeat_header")
