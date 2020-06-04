#' A GSAfisher default method
#'
#' This function calculates the GSAfisher value for each pvalue
#' @param obj The object you want to calculate the Fischer value
#' @keywords GSAfisher
#' @export
#' @examples
#' p.val <- runif(1000,0,0.25)
#' class(p.val) <- "GSAfisher"
#' GSAfisher(p.val)

GSAfisher.default <- function(obj,...) {
  class(obj) <- "GSAfisher"
  output <- data.frame()
  for (i in 1:length(obj)) {
    newpvalue <- 1 - pchisq(-2 * sum(log(obj[i])), df = 2 * length(obj[i]))
    output <- rbind(output,newpvalue)
  }
  return(output)
}
