book <- function(..., toc = FALSE, toc_depth = 3, template = find_template("book")) {
  tablist <- pkg_file("includes", "tablist.tex")
  indent <- pkg_file("includes", "indent.tex")
  bookdown::pdf_book(toc = toc, toc_depth = toc_depth, template = template, includes = includes(in_header = tablist,
    before_body = indent), ...)
}
