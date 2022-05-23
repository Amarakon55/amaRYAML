github <- function(...,
		   toc = TRUE,
		   number_sections = FALSE,
		   pandoc_args = "--lua-filter = /home/amarakon/.local/bin/lower-header.lua") {
    before_body <- pkg_file("includes", "before_body.md")
    bookdown::github_document2(toc = TRUE,
			       number_sections = number_sections,
			       pandoc_args = pandoc_args,
			       includes = includes(before_body = before_body),
			       ...) }
