cat("\n\nJUST SOME R Functions: Nelson-Siegel yield curve\n")
# Nelson Siegel function
nsz <- function(b0, b1, b2, tau, t) {
  tmp = t/tau
  tmp2 = exp(-tmp)
  return(b0 + ((b1+b2)*(1-tmp2)/(tmp)) - (b2*tmp2))
}

timepoints <- c(0.01,1:5)

# The bad way:
z <- numeric(length(timepoints))
for (i in 1:length(timepoints)) {
  z[i] <- nsz(14.084,-3.4107,0.0015,1.8832,timepoints[i])
}
print(z)

# The R way --
print(z <- nsz(14.084,-3.4107,0.0015,1.8832,timepoints))

