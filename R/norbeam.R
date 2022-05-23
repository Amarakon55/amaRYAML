norbeam <- function(..., toc = FALSE, latex_engine = "xelatex", theme = "Nord", highlight = find_theme("norbeam")) {
  bookdown::beamer_presentation2(toc = toc, latex_engine = latex_engine, theme = theme,
    highlight = highlight, ...)
}
