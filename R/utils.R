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
#                                ...) {
#  fmt <- bookdown::pdf_document2(...)
#  fmt$inherits <- "pdf_document2"
#  fmt
#}
#find_resource <- function(template, file = "template.tex") {
#  res <- pkg_file_template(template, "resources", file)
#  if (res == "") {
#    stop(
#      "Couldn't find template file ", template, "/resources/", file,
#      call. = FALSE
#    )
#  }
#  res
#}
