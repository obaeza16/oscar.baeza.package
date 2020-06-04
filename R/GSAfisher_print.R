#' A print method for the class GSAfisher
#'
#' This prints the GSAfisher estatistic value
#' @param obj The object you want to calculate the GSAfisher estatistic value
#' @keywords GSAfisher
#' @export
#' @examples
#' p.val <- runif(1000,0,0.25)
#' class(p.val) <- "GSAfisher"
#' print(p.val)

print.GSAfisher <- function(obj,...) {
  value <- sum(-2*log(obj))
  cat("The GSAfisher estatistic value from your object is",value)
}
