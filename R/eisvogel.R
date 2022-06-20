#' @export
eisvogel <- function(..., colorlinks = TRUE, links_as_notes = TRUE, number_sections = TRUE,
  toc = FALSE, toc_depth = 3, template = find_template("eisvogel"), pandoc_args = NULL) {
  tablist <- pkg_file("includes", "tablist.tex")
  pandoc_args <- c(pandoc_args, if (colorlinks) rmarkdown::pandoc_variable_arg("colorlinks"),
    if (links_as_notes) rmarkdown::pandoc_variable_arg("links-as-notes"))
  bookdown::pdf_document2(number_sections = number_sections, toc = toc, toc_depth = toc_depth,
    template = template, includes = rmarkdown::includes(in_header = tablist),
    pandoc_args = pandoc_args, ...)
}
