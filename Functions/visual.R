visual <- function(type, x, y = NULL, title = "", xlab = "", ylab = "", 
                   col = "lightblue", ...) {
  # Setting the margins
  par(mgp = c(4, 1, 0), mar = c(7, 6, 4, 2))

  if (type == "bar") {
    bp<- barplot(x, main = title, xlab = xlab, ylab = ylab, col = col, 
                 ylim = c(0, max(x)*1.1), las = las, ...)
    text(x = bp, y = x, labels = x, pos = 3, col = "black", las = las, ...)
  } else if (type == "hist") 
    {
    hp<- hist(x, main = title, xlab = xlab, col = col, ...)
    text(x = hp, y = x, labels = x, pos = 3, col = "black", ...)
  } else if (type == "scatter") 
    {
    plot(x, y, main = title, xlab = xlab, ylab = ylab, col = col, pch = 16, ...)
  } else if (type == "box") 
    {
    boxplot(x ~ y, main = title, xlab = xlab, ylab = ylab, col = col, las = 2, ...)
  }

}