#  Return function to interpolate a praxis_colour palette
#'
#' @param palette Character name of palette in praxis_colour
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#
praxis_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- praxis_palettes[[palette]]
  if (reverse) pal <- rev(pal)
  colorRampPalette(pal, ...)
}
