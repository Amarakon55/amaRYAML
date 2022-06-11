#' @export
kabularx <- function(...) knitr::kable(escape = FALSE, booktabs = TRUE, tabularx = TRUE,
  linesep = "\\addlinespace", ...) |>
  kableExtra::kable_styling(latex_options = "hold_position")

#' @export
xlkabular <- function(...) knitr::kable(escape = FALSE, booktabs = TRUE, xltabular = TRUE,
  linesep = "\\addlinespace", ...) |>
  kableExtra::kable_styling(latex_options = "repeat_header")
