norbeam <- function(..., toc = FALSE, theme = "Nord", highlight = find_theme("norbeam")) {
  slideshow <- pkg_file("includes", "slideshow.tex")
  bookdown::beamer_presentation2(toc = toc, theme = theme, highlight = highlight, includes = includes(in_header = slideshow),
    ...)
}
