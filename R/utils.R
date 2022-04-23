#find_resource <- function(template, file = "in_header.tex") {
#  res <- pkg_file_template(template, "resources", file)
#  if (res == "") {
#    stop(
#      "Couldn't find header file ", template, "/resources/", file,
#      call. = FALSE
#    )
#  }
#  res
#}
#
#pdf_document_format <- function(format,
#				header-includes = find_resource(format, "eisvogel-in_header.tex"),
#                                ...) {
#  fmt <- bookdown::pdf_document2(..., header-includes = template)
#  fmt$inherits <- "pdf_document2"
#  fmt
#}
