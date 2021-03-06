#' Color scale constructor for Praxis' colors
#'
#' @param palette Character name of palette in praxis_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#' @export
scale_color_praxis <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- praxis_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("praxis_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}

scale_colour_praxis <- scale_color_praxis
