source("https://raw.githubusercontent.com/izeh/i/master/i.r")

d <- seq(.1, .5, .05)

plot(1, xlim = range(d), ylim = c(0, 1600), xlab = "Cohen's d", ylab = "Group Sample Size", font.lab = 2)
axis(1, at = c(.15, .361), col.axis = "purple")

n <- power.t(d = d, power = .8)$n1
lines(d, n, type = "b", pch = 16, col = 4, cex = 1.6)
m <- plan.t.ci(d, width = .5)$n1
lines(d, m, type = "o", col = 2, pch = 15, cex = 1.2, lty = 3)
text(d, n, n, pos = 3, col = 4)
text(d, m, m, pos = 1, col = 2)

legend("topright", c("PAA", "AESE"), pch = c(19, 15), col = c(4, 2), lty = c(1, 3), text.font = 2, bty = "n")
