github <- function(..., toc = TRUE, number_sections = FALSE) {
  before_body <- pkg_file("includes", "before_body.md")
  bookdown::github_document2(toc = TRUE, number_sections = number_sections, pandoc_args = c(lua_filters("lower-header.lua")),
    includes = includes(before_body = before_body), ...)
}
