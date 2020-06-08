#' Function to extract praxis_cols colors as hex codes
#'
#' @param ... Character names of praxis_cols

praxis_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (praxis_colours)

  praxis_colours[cols]
}
