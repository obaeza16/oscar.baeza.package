#' A summary method for the class GSAfisher
#'
#' This prints a brief summary for the object of class GSAfisher
#' @param obj The object you want to see this brief summary
#' @keywords GSAfisher
#' @export
#' @examples
#' p.val <- runif(1000,0,0.25)
#' class(p.val) <- "GSAfisher"
#' summary(p.val)

summary.GSAfisher <- function(obj,...) {
  media <- mean(obj)
  sdev <- sd(obj)
  len <- length(obj)
  in_max <- which.max(obj)
  va_max <- max(obj)
  in_min <- which.min(obj)
  va_min <- min(obj)
  cat("The mean of your p values is",media,"\n")
  cat("The standard deviation of your p values is",sdev,"\n")
  cat("The length of your object is",len,"\n")
  cat("The maximum value of your p values is ",va_max,"in position",in_max,"\n")
  cat("The minimum value of your p values is ",va_min,"in position",in_min,"\n")
  boxplot(obj,main="Boxplot of p-values in your object",ylab="p values")
}
