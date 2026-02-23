visual <- function(type, x, y = NULL, title = "", xlab = "", ylab = "", 
                   col = "lightblue", ...) {

  if (type == "bar") {
    bp <- barplot(x, main = title, xlab = xlab, ylab = ylab, col = col, 
                  ylim = c(0, max(x, na.rm = TRUE) * 1.2), ...)
    text(x = bp, y = x, labels = x, pos = 3, col = "black")
    
  } else if (type == "hist") {
    hist(x, main = title, xlab = xlab, col = col, ...)
    
  } else if (type == "scatter") {
    plot(x, y, main = title, xlab = xlab, ylab = ylab, col = col, ...)
    
  } else if (type == "box") {
    boxplot(x ~ y, main = title, xlab = xlab, ylab = ylab, col = col, ...)
  }
}