book <- function(..., toc = FALSE,
		      toc_depth = 3) {
  in_header <- pkg_file("includes", "in_header.tex")
  indent <- pkg_file("includes", "indent.tex")
  bookdown::pdf_book(
    toc = toc,
    toc_depth = toc_depth,
    includes = includes(in_header = in_header, before_body = indent), ...
  )
}
