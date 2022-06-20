#' @export
book <- function(..., link_citations = TRUE, number_sections = TRUE, toc = FALSE,
  toc_depth = 3, template = find_template("eisvogel"), pandoc_args = NULL) {
  tablist <- pkg_file("includes", "tablist.tex")
  pandoc_args <- c(pandoc_args, if (link_citations) rmarkdown::pandoc_variable_arg("link-citations"))
  bookdown::pdf_document2(number_sections = number_sections, toc = toc, toc_depth = toc_depth,
    template = template, includes = rmarkdown::includes(in_header = tablist), pandoc_args = pandoc_args,
    ...)
}

