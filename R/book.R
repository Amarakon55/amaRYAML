book <- function(..., toc_depth = 3,
		 latex_engine = "xelatex",
		 header_includes = "\\setlength\\parindent{24pt}") {
  in_header <- system.file("includes", "in_header.tex",
                           package = "amaRyaml")
  bookdown::pdf_book(
    toc_depth = toc_depth,
    latex_engine = latex_engine,
    includes = includes(in_header = in_header),
    header_includes = header_includes, ...
  )
}
