eisvogel <- function(..., number_sections = TRUE,
		          toc_depth = 3,
			  latex_engine = "xelatex",
			  template = template("eisvogel", table-use-row-colors = TRUE)) {
			  #includes = includes(in_header = "/resources/eisvogel-in_header.tex")) {
  bookdown::pdf_document2(
    number_sections = number_sections,
    toc_depth = toc_depth,
    latex_engine = latex_engine,
    template = template, ...
    #includes = includes, ...
  )
}
