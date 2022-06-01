leaflet <- function(..., number_sections = FALSE, toc = FALSE) {
  leaflet <- pkg_file("includes", "leaflet.tex")
  bookdown::pdf_document2(number_sections = number_sections, toc = toc,
    includes = includes(in_header = leaflet), ...)
}
