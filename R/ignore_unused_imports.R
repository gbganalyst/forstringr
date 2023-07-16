# Suppress R CMD check note for glue package (not use but imported for rlang)

ignore_unused_imports <- function() {
  glue::glue
}
