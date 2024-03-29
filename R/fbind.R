#' Bind two factors
#'
#' Create a new factor from two existing factors, where the new factors' levels
#' are the union of the levels of the input factors.
#'
#' @param a factor
#' @param b factor
#'
#' @return factor
#' @export
#'
#' @examples
#' fbind(iris$species[c(1, 51, 101)], PlantGrowth$group[c(1, 11, 21)])
#'
fbind <- function(a, b) {
  factor(c(as.character(a), as.character(b)))
}
