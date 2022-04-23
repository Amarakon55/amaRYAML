find_resource <- function(template, file = "header.tex") {
  res <- pkg_file_template(template, "resources", file)
  if (res == "") {
    stop(
      "Couldn't find header file ", template, "/resources/", file,
      call. = FALSE
    )
  }
  res
}

pdf_document_format <- function(format,
				header-includes = find_resource(format, "eisvogel-header.tex"),
                                ...) {
  fmt <- bookdown::pdf_document2(..., header-includes = header-includes)
  fmt$inherits <- "pdf_document2"
  fmt
}

eisvogel <- function(..., number_sections = TRUE,
		          toc_depth = 3,
			  latex_engine = "xelatex",
			  template = "eisvogel") {
  pdf_document_format("eisvogel",
    number_sections = number_sections,
    toc_depth = toc_depth
    latex_engine = latex_engine,
    template = template, ...
  )
}
