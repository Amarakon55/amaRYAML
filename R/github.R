github <- function(..., html_preview = FALSE,
		        number_sections = TRUE,
			toc = TRUE,
			toc_depth = 3) {
  in_header <- system.file("includes", "in_header.tex",
                           package = "amaRyaml")
  bookdown::github_document2(
    html_preview = html_preview,
    number_sections = number_sections,
    toc = toc,
    toc_depth = toc_depth,
    includes = includes(in_header = in_header), ...
  )
}
