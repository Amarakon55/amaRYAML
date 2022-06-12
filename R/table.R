#' @export
kabularx <- function(..., escape = FALSE, booktabs = TRUE, linesep = "\\addlinespace") knitr::kable(tabularx = TRUE,
  escape = escape, booktabs = booktabs, linesep = linesep, ...) |>
  kableExtra::kable_styling(latex_options = "hold_position")

#' @export
xlkabular <- function(..., escape = FALSE, booktabs = TRUE, linesep = "\\addlinespace") knitr::kable(xltabular = TRUE,
  escape = escape, booktabs = booktabs, linesep = linesep, ...) |>
  kableExtra::kable_styling(latex_options = "repeat_header")
