norbeam <- function(..., toc = FALSE, theme = "Nord", highlight = find_theme("norbeam")) {
  bookdown::beamer_presentation2(toc = toc, theme = theme, highlight = highlight,
    ...)
}
