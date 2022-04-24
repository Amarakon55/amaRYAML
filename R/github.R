github <- function(..., html_preview = FALSE,
		        number_sections = TRUE,
			toc = TRUE,
			toc_depth = 3) {
  bookdown::github_document2(
    html_preview = html_preview,
    number_sections = number_sections,
    toc = toc,
    toc_depth = toc_depth, ...
  )
}
