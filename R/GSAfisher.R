#' A GSAfisher Function
#'
#' This function acts as a foundation to the other methods
#' @param obj The object you want to calculate the Fischer value
#' @keywords GSAfisher
#' @export
#' @examples
#' GSAfisher()

GSAfisher <- function(obj,...) {
  UseMethod("GSAfisher")
  class(obj) <- "GSAfisher"
}
