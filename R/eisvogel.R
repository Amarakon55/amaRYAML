eisvogel <- function(..., number_sections = TRUE,
			  toc = FALSE,
		          toc_depth = 3,
			  latex_engine = "xelatex",
			  template = "eisvogel") {
  bookdown::pdf_document2(
    number_sections = number_sections,
    toc = toc,
    toc_depth = toc_depth,
    latex_engine = latex_engine,
    template = template, ...
  )
}
