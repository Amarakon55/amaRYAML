pkg_file <- function(...) system.file(..., package = "amaryaml")

pkg_file_template <- function(...) pkg_file("rmarkdown", "templates", ...)

pkg_resource <- function(...) pkg_file("resources", ..., mustWork = TRUE)

find_template <- function(template, file = "template.tex") {
  res <- pkg_file_template(template, "resources", file)
  if (res == "") {
    stop("Couldn't find template file ", template, "/resources/", file, call. = FALSE)
  }
  res
}

find_theme <- function(theme, file = "theme.theme") {
  res <- pkg_file_template(theme, "resources", file)
  if (res == "") {
    stop("Couldn't find theme file ", theme, "/resources/", file, call. = FALSE)
  }
  res
}

lua_filters <- function(...) {
  c(rbind("--lua-filter", pkg_resource("lua", c(...))))
}

document2 <- function(..., pandoc_args = NULL, pandoc_vars = NULL,
                        base_format = bookdown::pdf_document2) {
  for (i in seq_along(pandoc_vars)){
    pandoc_args <- c(pandoc_args, rmarkdown::pandoc_variable_arg(names(pandoc_vars)[[i]], pandoc_vars[[i]]))
  }
