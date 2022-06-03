leaflet <- function(..., colorlinks = TRUE, link_citations = TRUE, number_sections = FALSE,
  toc = FALSE, pandoc_args = NULL) {
  leaflet <- pkg_file("includes", "leaflet.tex")
  pandoc_args <- c(pandoc_args, if (colorlinks) rmarkdown::pandoc_variable_arg("colorlinks"),
    if (link_citations) rmarkdown::pandoc_variable_arg("link-citations"))
  bookdown::pdf_document2(number_sections = number_sections, toc = toc, includes = includes(in_header = leaflet),
    pandoc_args = pandoc_args, ...)
}
