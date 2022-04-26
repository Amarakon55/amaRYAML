norbeam <- function(..., latex_engine = "xelatex", theme = "Nord") {
  in_header <- system.file("includes", "in_header.tex",
                           package = "amaryaml")
  bookdown::beamer_presentation2(
    latex_engine = latex_engine,
    theme = theme,
    includes = includes(in_header = in_header), ...
  )
}
