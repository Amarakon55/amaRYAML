norbeam <- function(..., colorlinks = TRUE, link_citations = TRUE, linkcolor = "NordRed",
  filecolor = "NordRed", citecolor = "NordBlue", urlcolor = "NordBlue", toc = FALSE,
  theme = "Nord", highlight = find_theme("norbeam"), pandoc_args = NULL) {
  pandoc_args <- c(pandoc_args, if (colorlinks) rmarkdown::pandoc_variable_arg("colorlinks"),
    if (link_citations) rmarkdown::pandoc_variable_arg("link-citations"), if (linkcolor) rmarkdown::pandoc_variable_arg("linkcolor"),
    if (filecolor) rmarkdown::pandoc_variable_arg("filecolor"), if (citecolor) rmarkdown::pandoc_variable_arg("citecolor"),
    if (urlcolor) rmarkdown::pandoc_variable_arg("urlcolor"))
  bookdown::beamer_presentation2(toc = toc, theme = theme, highlight = highlight,
    pandoc_args = pandoc_args, ...)
}
