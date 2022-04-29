eisvogel <- function(..., toc = FALSE,
		          number_sections = TRUE,
		          toc_depth = 3,
			  latex_engine = "xelatex",
			  template = "eisvogel") {
  in_header <- system.file("includes", "in_header.tex",
                           package = "amaryaml")
  bookdown::pdf_document2(
    toc = toc,
    number_sections = number_sections,
    toc_depth = toc_depth,
    latex_engine = latex_engine,
    template = template,
    includes = includes(in_header = in_header), ...
  )
}
