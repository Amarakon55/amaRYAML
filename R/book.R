book <- function(..., colorlinks = TRUE, link_citations = TRUE, documentclass = "book", site = "bookdown::bookdown_site", toc = FALSE, toc_depth = 3, pandoc_args = NULL) {
  tablist <- pkg_file("includes", "tablist.tex")
  indent <- pkg_file("includes", "indent.tex")
  pandoc_args <- c(pandoc_args, if (colorlinks) rmarkdown::pandoc_variable_arg("colorlinks"),
    if (link_citations) rmarkdown::pandoc_variable_arg("link-citations"),
    if (documentclass) rmarkdown::pandoc_variable_arg("documentclass"),
    if (site) rmarkdown::pandoc_variable_arg("site"))
  bookdown::pdf_book(toc = toc, toc_depth = toc_depth, includes = includes(in_header = tablist,
    before_body = indent), pandoc_args = pandoc_args, ...)
}
