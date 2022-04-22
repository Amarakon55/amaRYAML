pdf_document_format <- function(format,
                                template = find_resource(format, "template.tex"),
                                ...) {
  fmt <- bookdown::pdf_document2(..., template = template)
  fmt$inherits <- "pdf_document2"
  fmt
}
