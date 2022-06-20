#' @export
leaflet <- function(..., colorlinks = TRUE, links_as_notes = TRUE, number_sections = FALSE,
  toc = FALSE, template = find_template("leaflet"), pandoc_args = NULL) {
  leaflet <- pkg_file("includes", "leaflet.tex")
  pandoc_args <- c(pandoc_args, if (colorlinks) rmarkdown::pandoc_variable_arg("colorlinks"),
    if (links_as_notes) rmarkdown::pandoc_variable_arg("links-as-notes"))
  bookdown::pdf_document2(number_sections = number_sections, toc = toc, includes = rmarkdown::includes(in_header = leaflet),
    template = template, pandoc_args = pandoc_args, ...)
}
