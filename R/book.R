book <- function(..., latex_engine = "xelatex", toc = FALSE, toc_depth = 3) {
  tabitemize <- pkg_file("includes", "tabitemize.tex")
  indent <- pkg_file("includes", "indent.tex")
  bookdown::pdf_book(latex_engine = latex_engine, toc = toc, toc_depth = toc_depth,
    includes = includes(in_header = tabitemize, before_body = indent), ...)
}
