eisvogel <- function(..., number_sections = TRUE,
		          toc_depth = 3,
			  latex_engine = "xelatex",
			  template = "eisvogel") {
			  #includes = includes(in_header = "/resources/eisvogel-in_header.tex")) {
  pdf_document_format("eisvogel"
    number_sections = number_sections,
    toc_depth = toc_depth,
    latex_engine = latex_engine,
    template = template, ...
    #includes = includes, ...
  )
}
