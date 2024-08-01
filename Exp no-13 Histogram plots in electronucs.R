data <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 
          15, 15, 15, 18, 18, 18, 18, 18, 20, 20, 20, 20, 20, 20, 20, 21, 21, 
          21, 21, 25, 25, 25, 25, 25, 28, 28, 30, 30, 30)
bins <- split(data, ceiling(seq_along(data)/17))
bin_means <- lapply(bins, function(bin) rep(mean(bin), length(bin)))
bin_boundaries <- lapply(bins, function(bin) {
  min_val <- min(bin)
  max_val <- max(bin)
  sapply(bin, function(x) ifelse(abs(x - min_val) < abs(x - max_val), min_val, max_val))
})
bin_means <- unlist(bin_means)
bin_boundaries <- unlist(bin_boundaries)
hist(data, breaks=10, main="Original Data Histogram", xlab="Price", ylab="Frequency", col="blue")
hist(bin_means, breaks=10, main="Histogram for Bin Means", xlab="Price", ylab="Frequency", col="yellow")
hist(bin_boundaries, breaks=10, main="Histogram for Bin Boundaries", xlab="Price", ylab="Frequency", col="red")