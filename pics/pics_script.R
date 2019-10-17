data= data.frame(
  x = c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9),
  y = c(10, 11, 14, 15, 16.3, 19, 18, 21, 22, 24),
  avg = c(10, 11, 14, 15, 16.3, 19, 18, 21, 22, 24),
  sdev = rnorm(10, mean = 0.9, sd = 0.05)
)

plot(NULL, NULL, 
     ylim=c(8, 25), xlim = c(0, 9),
     xaxt="n", yaxt="n", xlab="  ", ylab="  ", bty = "l"
     )

x <- data$x
sdev <-data$sdev
avg <- data$avg
arrows(x, avg-sdev, x, avg+sdev, length=0.05, angle=90, code=3)
axis(1, labels = expression(x[1], x[2],x[3],x[4],x[5],x[6],x[7],x[8],x[9],x[10]), at = data$x )


