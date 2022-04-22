eisvogel <- function(..., number_sections = TRUE, toc_depth = 3, latex_engine = "xelatex") {
  template <- system.file("rmarkdown", "templates", "eisvogel",
                          "resources", "template.tex",
                          package = "amaRyaml"
  )
  #pandoc_vars <- list()
  #if(page_total) pandoc_vars$page_total <- TRUE
  #if(show_footer) pandoc_vars$show_footer <- TRUE
  cv_document(...,
              template = template, number_sections = number_sections, toc_depth = toc_depth, latex_engine = latex_engine)
}
