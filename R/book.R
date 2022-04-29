book <- function(..., toc = FALSE,
		      toc_depth = 3,
		      latex_engine = "xelatex") {
  in_header <- system.file("includes", "in_header.tex",
                           package = "amaryaml")
  indent <- system.file("includes", "indent.tex",
			package = "amaryaml")
  bookdown::pdf_book(
    toc = toc,
    toc_depth = toc_depth,
    latex_engine = latex_engine,
    includes = includes(in_header = in_header, before_body = indent), ...
  )
}
