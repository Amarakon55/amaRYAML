pkg_file <- function(...) system.file(..., package = "amaryaml")

pkg_file_template <- function(...) pkg_file("rmarkdown", "templates", ...)

find_theme <- function(theme, file = "theme.theme") {
  res <- pkg_file_template(theme, "resources", file)
  if (res == "") {
    stop(
      "Couldn't find theme file ", theme, "/resources/", file,
      call. = FALSE
    )
  }
  res
}
