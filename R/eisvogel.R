eisvogel <- function(..., number_sections = TRUE, toc = FALSE, toc_depth = 3, template = find_template("eisvogel")) {
  tablist <- pkg_file("includes", "tablist.tex")
  bookdown::pdf_document2(number_sections = number_sections, toc = toc, toc_depth = toc_depth,
    template = template, includes = includes(in_header = tablist), ...)
}
