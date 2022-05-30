brochure <- function(..., number_sections = FALSE, toc = FALSE) {
  brochure <- pkg_file("includes", "brochure.tex")
  bookdown::pdf_document2(number_sections = number_sections, toc = toc,
    includes = includes(in_header = brochure), ...)
}
