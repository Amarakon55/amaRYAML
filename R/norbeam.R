norbeam <- function(..., toc = FALSE,
		         latex_engine = "xelatex",
			 theme = "Nord",
			 highlight = find_theme(norbeam)) {
  in_header <- system.file("includes", "in_header.tex",
                           package = "amaryaml")
  theme <- find_theme()
  bookdown::beamer_presentation2(
    latex_engine = latex_engine,
    theme = theme,
    highlight = highlight,
    includes = includes(in_header = in_header), ...
  )
}
