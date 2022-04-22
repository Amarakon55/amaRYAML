find_resource <- function(template, file = "template.tex") {
  res <- pkg_file_template(template, "resources", file)
  if (res == "") {
    stop(
      "Couldn't find template file ", template, "/resources/", file,
      call. = FALSE
    )
  }
  res
}

pdf_document_format <- function(format,
                                template = find_resource(format, "template.tex"),
                                ...) {
  fmt <- bookdown::pdf_document2(..., template = template)
  fmt$inherits <- "pdf_document2"
  fmt
}
