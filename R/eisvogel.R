eisvogel <- function(..., colorlinks = TRUE, link_citations = TRUE, number_sections = TRUE,
  toc = FALSE, toc_depth = 3, template = find_template("eisvogel")) {
  tablist <- pkg_file("includes", "tablist.tex")
  pandoc_vars <- list()
  if (colorlinks) pandoc_vars$colorlinks <- TRUE
  if (link_citations) pandoc_vars$"link-citations" <- TRUE
  document2(number_sections = number_sections, toc = toc, toc_depth = toc_depth,
    template = template, includes = includes(in_header = tablist), pandoc_vars = pandoc_vars,
    ...)
}

