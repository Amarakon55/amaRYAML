#' @export
card <- function(..., colorlinks = TRUE, links_as_notes = TRUE, template = find_template("card"),
  pandoc_args = NULL) {
  pandoc_args <- c(pandoc_args, if (colorlinks) rmarkdown::pandoc_variable_arg("colorlinks"),
    if (links_as_notes) rmarkdown::pandoc_variable_arg("links-as-notes"))
  rmarkdown::pdf_document(template = template, pandoc_args = pandoc_args, ...)
}
