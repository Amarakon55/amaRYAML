pdf <- function(..., latex_engine = "xelatex", page_total = FALSE,
                      show_footer = TRUE) {
  template <- system.file("rmarkdown", "templates", "awesomecv",
                          package = "amaRyaml"
  )
