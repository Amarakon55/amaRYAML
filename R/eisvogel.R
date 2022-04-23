in_header <- system.file("rmarkdown", "templates", "eisvogel",
                        "resources", "in_header.tex",
                        package = "amaRyaml")

eisvogel <- function(..., number_sections = TRUE,
		          toc_depth = 3,
			  latex_engine = "xelatex",
			  template = "eisvogel",
			  includes = includes(in_header = in_header)) {
  bookdown::pdf_document2(
    number_sections = number_sections,
    toc_depth = toc_depth,
    latex_engine = latex_engine,
    template = template,
    includes = includes, ...
  )
}
